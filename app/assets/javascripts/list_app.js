function ListApp() {
  this.init();
}

ListApp.prototype.init = function() {
  this.addSuccessListener();
  this.initExistingLists();
}

ListApp.prototype.initExistingLists = function() {
  $('.droppable-list').each(function() {
    new List($(this))
  })
}

ListApp.prototype.addSuccessListener = function() {
  var self = this
  $('.adder').on("ajax:success", function(evt, data, status){
    self.appendList(evt, data, status)
    $('#list_name').val('')
    $('#list_name').focus()
  })
}

ListApp.prototype.appendList = function(evt, data, status) {
  var newList = new List(data)
  $('.addable').append(newList.$element)
}

function List(element) {
  this.$element = $(element);
  this.init();
}

List.prototype.init = function() {
  this.makeListDroppable();
  this.id = this.getListId();
}

List.prototype.getListId = function() {
  return this.$element.attr('id').split('list_').slice(1)
}



List.prototype.makeListDroppable = function() {
  var self = this
  self.$element.droppable({
    drop: function(event, ui) {
      self.$element.append(ui.draggable.clone())
      var questionId = ui.draggable.find('.panel-collapse').attr('id')
      $.ajax({
        url: '/lists/'+ self.id +'/questions/' + questionId,
        type: 'PUT',
        success: function() {}
      });
    },
    tolerance: 'touch'
  })
}



