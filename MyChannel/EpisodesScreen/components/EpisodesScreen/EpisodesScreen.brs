' entry point of EpisodesScreen
function Init()
    ' observe "visible" so we can know when EpisodesScreen change visibility
    m.top.ObserveField("visible", "OnVisibleChange")
    m.categoryList = m.top.FindNode("categoryList")
    ' observe "itemFocused" so we can know which season gain focus
    m.categoryList.ObserveField("itemFocused", "OnCategoryItemFocused")
    m.itemsList = m.top.FindNode("itemsList")
    ' observe "itemFocused" so we can know which episode gain focus
    m.itemsList.ObserveField("itemFocused", "OnListItemFocused")
    ' observe "itemSelected" so we can know which episode is selected
    m.itemsList.ObserveField("itemSelected", "OnListItemSelected")
    m.top.ObserveField("content", "OnContentChange")
end function

sub OnListItemFocused(event as Object) ' invoked when episode is focused
    focusedItem = event.GetData() ' index of episode
    ' index of season which contains focused episode
    