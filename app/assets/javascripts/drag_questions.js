function makeQuestionsDraggable(){
  $('.draggable-question').draggable( { helper: "clone"} )
}

function makeListsDroppable() {
  $('.droppable-list').droppable({
    drop: tryToAddThingToList
  })
}

function tryToAddThingToList(e, ui){
  var $elem = ui.draggable.clone()
  $('.droppable-list').append($elem)
  $elem.addClass("pending")

  // $.ajax.({
  //   url:"figure it out",
  //   type:'post',
  //   data:buildRequestData(thisList, thisQuestion)
  //   // data:{question-id:234, list-id:13}
  // }).done(function(){
  //   $elem.removeClass("pending")
  // }).failure(function(){
  //   $elem.remove()
  // })



  // console.log("sup")

}


$(document).ready(function() {
  makeQuestionsDraggable()
  makeListsDroppable()
  // draggability
  // droppability
  // var total = 0
  // incrementability(total)

})