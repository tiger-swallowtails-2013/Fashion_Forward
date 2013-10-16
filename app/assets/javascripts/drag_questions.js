function DroppableList($elem){
  this.$list = $elem
  this.makeDroppable($elem)
}

DroppableList.prototype.getId = function() {
  return this.$list.attr("id")

};

DroppableList.prototype.makeDroppable = function($element) {
  var self = this
  $element.droppable({
    drop: function(e, ui){
      self.appendAndPersist(ui.draggable.clone())
    }
  })
}

DroppableList.prototype.appendAndPersist = function($elem){
  this.$list.append($elem)
  console.log(this.$list)
  $elem.addClass("pending")
  $.ajax({
    url: "/lists/" + this.getId() + "/add",
    type:"post",
    data:{question_id:$elem.attr("id")}
  }).done(function(){
    $elem.removeClass("pending")
  }).error(function(){
    $elem.remove()
  })
}

function makeQuestionsDraggable(){
  $('.draggable-question').draggable( { helper: "clone"} )
}

function makeListsDroppable() {
  $('.droppable-list').each(function(index, element){
    new DroppableList($(element))
  })
}