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
}

List.prototype.makeListDroppable = function() {
  var self = this
  self.$element.droppable({
    drop: function(event, ui) {
      self.$element.append(ui.draggable.clone())
    },
    tolerance: 'touch'
  })
}

