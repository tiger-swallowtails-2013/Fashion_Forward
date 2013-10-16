//listen to the form -- event ajax:success
//get the new list
//add the new list to the list of lists container

function addListenerToNewList() {
  $("form.new_list").on("ajax:success", addList)
}

function addList(e, data, status, xhr) {
  var $newElement = $(data)
  $("div.addable").append($newElement)
  new DroppableList($newElement)
}


