.class public Lcom/google/appinventor/components/runtime/ListPicker;
.super Lcom/google/appinventor/components/runtime/Picker;
.source "ListPicker.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A button that, when clicked on, displays a list of texts for the user to choose among. The texts can be specified through the Designer or Blocks Editor by setting the <code>ElementsFromString</code> property to their string-separated concatenation (for example, <em>choice 1, choice 2, choice 3</em>) or by setting the <code>Elements</code> property to a List in the Blocks editor.</p><p>Setting property ShowFilterBar to true, will make the list searchable.  Other properties affect the appearance of the button (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be clicked on (<code>Enabled</code>).</p><p>Use the ListPickerStyle to change the appearance when the ListPicker is opened.<p>Use the ListPickerItemStyle to change the how the items appear in the picker. You can use Right, Left, Bottom, BottomRight, Alpha, Scale. Use Swipe if you want to to provide ability to swipe-to-delete ListPicker items."
    version = 0x8
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "listviewanimations.jar"
.end annotation


# static fields
.field private static final DEFAULT_ENABLED:Z = false

.field public static final DEFAULT_ITEM_BACKGROUND_COLOR:I = -0x1000000

.field public static final DEFAULT_ITEM_TEXT_COLOR:I = -0x1

.field static final LIST_ACTIVITY_ANIMATION:Ljava/lang/String;

.field static final LIST_ACTIVITY_ANIM_TYPE:Ljava/lang/String;

.field static final LIST_ACTIVITY_ARG_NAME:Ljava/lang/String;

.field static final LIST_ACTIVITY_BACKGROUND_COLOR:Ljava/lang/String;

.field private static final LIST_ACTIVITY_CLASS:Ljava/lang/String;

.field static final LIST_ACTIVITY_ITEMS:Ljava/lang/String;

.field static final LIST_ACTIVITY_ITEM_TEXT_COLOR:Ljava/lang/String;

.field static final LIST_ACTIVITY_ORIENTATION_TYPE:Ljava/lang/String;

.field static final LIST_ACTIVITY_RESULT_INDEX:Ljava/lang/String;

.field static final LIST_ACTIVITY_RESULT_NAME:Ljava/lang/String;

.field static final LIST_ACTIVITY_SHOW_SEARCH_BAR:Ljava/lang/String;

.field static final LIST_ACTIVITY_SHOW_SEARCH_BAR_TEXT:Ljava/lang/String;

.field static final LIST_ACTIVITY_STYLE:Ljava/lang/String;

.field static final LIST_ACTIVITY_TITLE:Ljava/lang/String;


# instance fields
.field private animationStyle:Ljava/lang/String;

.field private deletedItems:Lcom/google/appinventor/components/runtime/util/YailList;

.field private filterBarText:Ljava/lang/String;

.field private itemBackgroundColor:I

.field private itemTextColor:I

.field private items:Lcom/google/appinventor/components/runtime/util/YailList;

.field private listActivityStyle:Ljava/lang/String;

.field private resumedFromListFlag:Z

.field private selection:Ljava/lang/String;

.field private selectionIndex:I

.field private showFilter:Z

.field private sortOrder:I

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-class v0, Lcom/google/appinventor/components/runtime/ListPickerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ARG_NAME:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".selection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_RESULT_NAME:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".index"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_RESULT_INDEX:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ITEMS:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".animation.style"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ANIMATION:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".style"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_STYLE:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".anim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ANIM_TYPE:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_SHOW_SEARCH_BAR:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".search.text"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_SHOW_SEARCH_BAR_TEXT:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_TITLE:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".orientation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ORIENTATION_TYPE:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".itemtextcolor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ITEM_TEXT_COLOR:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".backgroundcolor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_BACKGROUND_COLOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Picker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 69
    iput v1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->sortOrder:I

    .line 70
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->showFilter:Z

    .line 71
    const-string/jumbo v0, "Search list..."

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->filterBarText:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->title:Ljava/lang/String;

    .line 77
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->resumedFromListFlag:Z

    .line 79
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->deletedItems:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 93
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 94
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selection:Ljava/lang/String;

    .line 95
    iput v1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selectionIndex:I

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->itemTextColor:I

    .line 97
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->itemBackgroundColor:I

    .line 99
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 100
    return-void
.end method

.method private loadDeletedItems(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "origList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p2, "updatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v4, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 444
    .local v0, "anItem":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 445
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    .end local v0    # "anItem":Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/ListPicker;->deletedItems:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 449
    return-void
.end method


# virtual methods
.method public DeletedItems()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns list of deleted items from last swipe"
    .end annotation

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->deletedItems:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public Elements()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1
    .param p1, "itemList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 311
    const-string/jumbo v0, "ListPicker"

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elements(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 312
    return-void
.end method

.method public ElementsFromString(Ljava/lang/String;)V
    .locals 1
    .param p1, "itemstring"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 327
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elementsFromString(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 328
    return-void
.end method

.method public FilterBarText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the text that will display at top of FilterBar"
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->filterBarText:Ljava/lang/String;

    return-object v0
.end method

.method public FilterBarText(Ljava/lang/String;)V
    .locals 0
    .param p1, "filterBarText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Allows you to setup a custom text to display for the ShowFilterBar. Default is \'Search list...\'"
    .end annotation

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->filterBarText:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public ItemBackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The background color of the ListPicker items."
    .end annotation

    .prologue
    .line 264
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->itemBackgroundColor:I

    return v0
.end method

.method public ItemBackgroundColor(I)V
    .locals 0
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 258
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->itemBackgroundColor:I

    .line 259
    return-void
.end method

.method public ItemTextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text color of the ListPicker items."
    .end annotation

    .prologue
    .line 251
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->itemTextColor:I

    return v0
.end method

.method public ItemTextColor(I)V
    .locals 0
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 245
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->itemTextColor:I

    .line 246
    return-void
.end method

.method public ListPickerItemStyle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets up the ListPicker item style. Valid Styles are: Default, Alpha, Left, Right, Bottom, BottomRight, Scale, Swipe"
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->animationStyle:Ljava/lang/String;

    return-object v0
.end method

.method public ListPickerItemStyle(Ljava/lang/String;)V
    .locals 2
    .param p1, "style"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Default"
        editorType = "picker_item_options"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets up the ListPicker item style. Valid Styles are: Default, Alpha, Left, Right, Bottom, BottomRight, Scale, Swipe"
    .end annotation

    .prologue
    .line 157
    const-string/jumbo v0, "default left right bottom alpha swipe scale bottomright"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid PickerItem Style."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->animationStyle:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public ListPickerStyle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->listActivityStyle:Ljava/lang/String;

    return-object v0
.end method

.method public ListPickerStyle(Ljava/lang/String;)V
    .locals 0
    .param p1, "listpickerStyle"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Default"
        editorType = "picker_style"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->listActivityStyle:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public Selection()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The selected item.  When directly changed by the programmer, the SelectionIndex property is also changed to the first item in the ListPicker with the given value.  If the value does not appear, SelectionIndex will be set to 0."
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selection:Ljava/lang/String;

    return-object v0
.end method

.method public Selection(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selection:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectedIndexFromValue(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selectionIndex:I

    .line 135
    return-void
.end method

.method public SelectionIndex()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The index of the currently selected item, starting at 1.  If no item is selected, the value will be 0.  If an attempt is made to set this to a number less than 1 or greater than the number of items in the ListPicker, SelectionIndex will be set to 0, and Selection will be set to the empty text."
    .end annotation

    .prologue
    .line 278
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selectionIndex:I

    return v0
.end method

.method public SelectionIndex(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->selectionIndex(ILcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selectionIndex:I

    .line 290
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectionFromIndex(ILcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selection:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public ShowFilterBar(Z)V
    .locals 0
    .param p1, "showFilter"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->showFilter:Z

    .line 219
    return-void
.end method

.method public ShowFilterBar()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns current state of ShowFilterBar indicating if Search Filter Bar will be displayed on ListPicker or not"
    .end annotation

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->showFilter:Z

    return v0
.end method

.method public SortOrder()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the ListPicker SortOrder"
    .end annotation

    .prologue
    .line 210
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->sortOrder:I

    return v0
.end method

.method public SortOrder(I)V
    .locals 3
    .param p1, "sortOrder"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "sort_options"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Allows you to specify a sort order for the ListPicker. The ListPicker can be sorted in Descending(-1), None (0), Ascending(1) "
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 185
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "strArray":[Ljava/lang/String;
    if-eq p1, v2, :cond_2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 191
    :cond_2
    if-ne p1, v2, :cond_3

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 193
    :goto_1
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListPicker;->Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 194
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->sortOrder:I

    goto :goto_0

    .line 192
    :cond_3
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method public Title()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Optional title displayed at the top of the list of choices."
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->title:Ljava/lang/String;

    return-object v0
.end method

.method public Title(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 351
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->title:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 356
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 357
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ARG_NAME:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_SHOW_SEARCH_BAR:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ListPicker;->showFilter:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListPicker;->title:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 361
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_TITLE:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListPicker;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListPicker;->filterBarText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 366
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_SHOW_SEARCH_BAR_TEXT:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListPicker;->filterBarText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getOpenAnimType()Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "openAnim":Ljava/lang/String;
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ANIM_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ANIMATION:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListPicker;->animationStyle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_STYLE:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListPicker;->listActivityStyle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ORIENTATION_TYPE:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ITEM_TEXT_COLOR:Ljava/lang/String;

    iget v3, p0, Lcom/google/appinventor/components/runtime/ListPicker;->itemTextColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_BACKGROUND_COLOR:Ljava/lang/String;

    iget v3, p0, Lcom/google/appinventor/components/runtime/ListPicker;->itemBackgroundColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    return-object v0
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V

    .line 456
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->resumedFromListFlag:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListPicker;->resumedFromListFlag:Z

    .line 110
    :cond_0
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 395
    iget v1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->requestCode:I

    if-ne p1, v1, :cond_3

    if-eq p2, v2, :cond_0

    if-nez p2, :cond_3

    .line 398
    :cond_0
    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ITEMS:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ITEMS:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 400
    .local v0, "stringArrayListExtra":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/ListPicker;->loadDeletedItems(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/util/ArrayList;)V

    .line 401
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 403
    .end local v0    # "stringArrayListExtra":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    if-ne p2, v2, :cond_2

    .line 404
    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_RESULT_NAME:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 405
    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_RESULT_NAME:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selection:Ljava/lang/String;

    .line 409
    :goto_0
    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_RESULT_INDEX:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selectionIndex:I

    .line 414
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPicker;->AfterPicking()V

    .line 419
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->resumedFromListFlag:Z

    .line 433
    :cond_3
    return-void

    .line 407
    :cond_4
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListPicker;->selection:Ljava/lang/String;

    goto :goto_0
.end method
