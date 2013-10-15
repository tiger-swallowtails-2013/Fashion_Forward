function DynamicContainer($elem){

  this.$elem = $elem
  this.addSuccessListener()
}

DynamicContainer.prototype.addSuccessListener = function(){
  var self = this
  self.adder().on("ajax:success", function(evt, data, status){
    self.appendData(evt, data, status)
  })
}

DynamicContainer.prototype.appendData = function(evt, data, status){
  var newChild = $(data)
  this.addable().append(newChild)
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