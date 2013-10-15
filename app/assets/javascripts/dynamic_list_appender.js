function DynamicContainer($elem){

  this.$elem = $elem
  this.addSuccessListener()
}

DynamicContainer.prototype.addSuccessListener = function(){
  var self = this
  self.adder().on("ajax:success", function(evt, data, status){
    self.appendList(evt, data, status)
    $('#list_name').val('')
    $('#list_name').focus()
  })
}

DynamicContainer.prototype.makeListsDroppable = function(newList) {
  var self = this
  newList.droppable({
    drop: function(event, ui) {
      self.appendToList(newList, ui.draggable.clone())
    },
    tolerance: 'touch'
  })
}

DynamicContainer.prototype.appendToList = function(list, elem){
  list.append(elem)
}


DynamicContainer.prototype.appendList = function(evt, data, status){
  var newList = $(data)
  this.makeListsDroppable(newList)
  this.addable().append(newList)
}

DynamicContainer.prototype.addable = function(){
  return this.$elem.find(".addable")
}

DynamicContainer.prototype.adder = function(){
  return this.$elem.find(".adder")
}

function createDynamicContainers(){
  $('.dynamic-container').each(function(index, elem){
    global = new DynamicContainer($(elem))
  })
}