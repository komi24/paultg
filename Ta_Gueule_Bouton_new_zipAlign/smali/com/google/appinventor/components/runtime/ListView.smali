.class public final Lcom/google/appinventor/components/runtime/ListView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "ListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/nhaarman/listviewanimations/itemmanipulation/OnDismissCallback;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>This is a visible component that displays a list of text elements. <br> The list can be set using the ElementsFromString property or using the Elements block in the blocks editor. <br> Warning: This component will not work correctly on Screens that are scrollable.</p>"
    iconName = "images/listView.png"
    nonVisible = false
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "listviewanimations.jar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ListView$MyAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = -0x1000000

.field private static final DEFAULT_ENABLED:Z = false

.field private static final DEFAULT_TEXT_COLOR:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ListView"

.field private static textColor:I


# instance fields
.field private animationStyle:Ljava/lang/String;

.field private backgroundColor:I

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private filterBarText:Ljava/lang/String;

.field private fontSize:F

.field private items:Lcom/google/appinventor/components/runtime/util/YailList;

.field private itemsArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final listView:Landroid/widget/ListView;

.field private final listViewLayout:Landroid/widget/LinearLayout;

.field mAdapter:Lcom/google/appinventor/components/runtime/ListView$MyAdapter;

.field private selection:Ljava/lang/String;

.field private selectionIndex:I

.field private showFilter:Z

.field private sortOrder:I

.field private txtSearchBox:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->itemsArrayList:Ljava/util/ArrayList;

    .line 76
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    .line 85
    iput v2, p0, Lcom/google/appinventor/components/runtime/ListView;->sortOrder:I

    .line 86
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSize:F

    .line 87
    const-string/jumbo v0, "Search list..."

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->filterBarText:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 97
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 98
    new-instance v0, Landroid/widget/ListView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 103
    new-instance v0, Landroid/widget/EditText;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setWidth(I)V

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->filterBarText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->SortOrder(I)V

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    new-instance v1, Lcom/google/appinventor/components/runtime/ListView$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ListView$1;-><init>(Lcom/google/appinventor/components/runtime/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 131
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 142
    :goto_0
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ListView;->Width(I)V

    .line 143
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->BackgroundColor(I)V

    .line 145
    const/4 v0, -0x1

    sput v0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    .line 146
    sget v0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->TextColor(I)V

    .line 147
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->ElementsFromString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 152
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 153
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method

.method private _setBottomRightAdapter()V
    .locals 3

    .prologue
    .line 551
    new-instance v0, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingBottomInAnimationAdapter;

    new-instance v1, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingRightInAnimationAdapter;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->mAdapter:Lcom/google/appinventor/components/runtime/ListView$MyAdapter;

    invoke-direct {v1, v2}, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingRightInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    invoke-direct {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingBottomInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    .line 552
    .local v0, "animAdapter":Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 554
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 555
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    return v0
.end method

.method private itemsToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "items"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 646
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 652
    :goto_0
    return-object v0

    .line 649
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 650
    .local v0, "alistItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setAlphaAdapter()V
    .locals 2

    .prologue
    .line 522
    new-instance v0, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/AlphaInAnimationAdapter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->mAdapter:Lcom/google/appinventor/components/runtime/ListView$MyAdapter;

    invoke-direct {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/AlphaInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    .line 523
    .local v0, "animAdapter":Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 524
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 525
    return-void
.end method

.method private setBottomAdapter()V
    .locals 2

    .prologue
    .line 540
    new-instance v0, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingBottomInAnimationAdapter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->mAdapter:Lcom/google/appinventor/components/runtime/ListView$MyAdapter;

    invoke-direct {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingBottomInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    .line 541
    .local v0, "animAdapter":Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 542
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 543
    return-void
.end method

.method private setBottomRightAdapter()V
    .locals 3

    .prologue
    .line 546
    new-instance v0, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingBottomInAnimationAdapter;

    new-instance v1, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingRightInAnimationAdapter;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->mAdapter:Lcom/google/appinventor/components/runtime/ListView$MyAdapter;

    invoke-direct {v1, v2}, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingRightInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    invoke-direct {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingBottomInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    .line 547
    .local v0, "animAdapter":Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 548
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 549
    return-void
.end method

.method private setLeftAdapter()V
    .locals 2

    .prologue
    .line 528
    new-instance v0, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingLeftInAnimationAdapter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->mAdapter:Lcom/google/appinventor/components/runtime/ListView$MyAdapter;

    invoke-direct {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingLeftInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    .line 529
    .local v0, "animAdapter":Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 530
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 531
    return-void
.end method

.method private setRightAdapter()V
    .locals 2

    .prologue
    .line 534
    new-instance v0, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingRightInAnimationAdapter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->mAdapter:Lcom/google/appinventor/components/runtime/ListView$MyAdapter;

    invoke-direct {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingRightInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    .line 535
    .local v0, "animAdapter":Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 536
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 537
    return-void
.end method

.method private setScaleAdapter()V
    .locals 2

    .prologue
    .line 517
    new-instance v0, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/ScaleInAnimationAdapter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->mAdapter:Lcom/google/appinventor/components/runtime/ListView$MyAdapter;

    invoke-direct {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/ScaleInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    .line 518
    .local v0, "animAdapter":Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 519
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 520
    return-void
.end method

.method private setSwipeDismissAdapter()V
    .locals 2

    .prologue
    .line 558
    new-instance v0, Lcom/nhaarman/listviewanimations/itemmanipulation/swipedismiss/SwipeDismissAdapter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->mAdapter:Lcom/google/appinventor/components/runtime/ListView$MyAdapter;

    invoke-direct {v0, v1, p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/swipedismiss/SwipeDismissAdapter;-><init>(Landroid/widget/BaseAdapter;Lcom/nhaarman/listviewanimations/itemmanipulation/OnDismissCallback;)V

    .line 559
    .local v0, "adapter":Lcom/nhaarman/listviewanimations/itemmanipulation/swipedismiss/SwipeDismissAdapter;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/swipedismiss/SwipeDismissAdapter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 560
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 561
    return-void
.end method

.method private setupStyle()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->animationStyle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->animationStyle:Ljava/lang/String;

    const-string/jumbo v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->mAdapter:Lcom/google/appinventor/components/runtime/ListView$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 514
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->animationStyle:Ljava/lang/String;

    const-string/jumbo v1, "bottom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListView;->setBottomAdapter()V

    goto :goto_0

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->animationStyle:Ljava/lang/String;

    const-string/jumbo v1, "bottomright"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 499
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListView;->setBottomRightAdapter()V

    goto :goto_0

    .line 500
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->animationStyle:Ljava/lang/String;

    const-string/jumbo v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 501
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListView;->setLeftAdapter()V

    goto :goto_0

    .line 502
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->animationStyle:Ljava/lang/String;

    const-string/jumbo v1, "scale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 503
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListView;->setScaleAdapter()V

    goto :goto_0

    .line 504
    :cond_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->animationStyle:Ljava/lang/String;

    const-string/jumbo v1, "alpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 505
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAlphaAdapter()V

    goto :goto_0

    .line 506
    :cond_6
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->animationStyle:Ljava/lang/String;

    const-string/jumbo v1, "swipe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 507
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListView;->setSwipeDismissAdapter()V

    goto :goto_0

    .line 509
    :cond_7
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->animationStyle:Ljava/lang/String;

    const-string/jumbo v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 510
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListView;->setRightAdapter()V

    goto :goto_0

    .line 512
    :cond_8
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListView;->setRightAdapter()V

    goto :goto_0
.end method


# virtual methods
.method public AfterDeleting(Ljava/lang/String;)V
    .locals 3
    .param p1, "deletedItem"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised after an item is deleted"
    .end annotation

    .prologue
    .line 585
    const-string/jumbo v0, "AfterDeleting"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 586
    return-void
.end method

.method public AfterPicking()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Simple event to be raised after the an element has been chosen in the list. The selected element is available in the Selection property."
    .end annotation

    .prologue
    .line 353
    const-string/jumbo v0, "AfterPicking"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 354
    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the listview background."
    .end annotation

    .prologue
    .line 381
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 396
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    .line 397
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->setBackgroundColor(I)V

    .line 398
    return-void
.end method

.method public Elements()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1
    .param p1, "itemsList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "List of text elements to show in the ListView.  This willsignal an error if the elements are not text strings."
    .end annotation

    .prologue
    .line 225
    const-string/jumbo v0, "Listview"

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elements(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 226
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->itemsToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->itemsArrayList:Ljava/util/ArrayList;

    .line 227
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 228
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
        description = "The TextView elements specified as a string with the items separated by commas such as: Cheese,Fruit,Bacon,Radish. Each word before the comma will be an element in the list."
    .end annotation

    .prologue
    .line 250
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elementsFromString(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 251
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 252
    return-void
.end method

.method public FilterBarText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the text that will display at top of FilterBar"
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->filterBarText:Ljava/lang/String;

    return-object v0
.end method

.method public FilterBarText(Ljava/lang/String;)V
    .locals 2
    .param p1, "filterBarText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Allows you to setup a custom text to display for the ShowFilterBar. Default is \'Search list...\'"
    .end annotation

    .prologue
    .line 599
    const-string/jumbo v0, "Search List..."

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->filterBarText:Ljava/lang/String;

    .line 600
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->filterBarText:Ljava/lang/String;

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->filterBarText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 605
    return-void
.end method

.method public FontSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The font size of the ListView items"
    .end annotation

    .prologue
    .line 480
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSize:F

    return v0
.end method

.method public FontSize(F)V
    .locals 0
    .param p1, "size"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 487
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSize:F

    .line 488
    return-void
.end method

.method public Height(I)V
    .locals 1
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the height of the list on the view."
    .end annotation

    .prologue
    .line 168
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 169
    const/4 p1, -0x2

    .line 171
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 172
    return-void
.end method

.method public ListViewItemStyle(Ljava/lang/String;)V
    .locals 2
    .param p1, "style"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Default"
        editorType = "listview_item_options"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets up the ListView item style. Valid Styles are: Default, Swipe"
    .end annotation

    .prologue
    .line 469
    const-string/jumbo v0, "default swipe "

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid ListView Style."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->animationStyle:Ljava/lang/String;

    .line 473
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 474
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListView;->setupStyle()V

    .line 475
    return-void
.end method

.method public Selection()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the text last selected in the ListView."
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

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
    .line 330
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 332
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectedIndexFromValue(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 333
    return-void
.end method

.method public SelectionIndex()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The index of the currently selected item, starting at 1.  If no item is selected, the value will be 0.  If an attempt is made to set this to a number less than 1 or greater than the number of items in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text."
    .end annotation

    .prologue
    .line 293
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    return v0
.end method

.method public SelectionIndex(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the position of the selected item in the ListView. This could be used to retrievethe text at the chosen position. If an attempt is made to set this to a number less than 1 or greater than the number of items in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text."
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->selectionIndex(ILcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 310
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectionFromIndex(ILcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public ShowFilterBar(Z)V
    .locals 2
    .param p1, "showFilter"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets visibility of ShowFilterBar. True will show the bar, False will hide it."
    .end annotation

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    .line 199
    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method

.method public ShowFilterBar()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns current state of ShowFilterBar for visibility."
    .end annotation

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    return v0
.end method

.method public SortOrder()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the ListPicker SortOrder"
    .end annotation

    .prologue
    .line 462
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->sortOrder:I

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

    .line 447
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "strArray":[Ljava/lang/String;
    if-eq p1, v2, :cond_2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 453
    :cond_2
    if-ne p1, v2, :cond_3

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 455
    :goto_1
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 456
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->sortOrder:I

    goto :goto_0

    .line 454
    :cond_3
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text color of the listview items."
    .end annotation

    .prologue
    .line 412
    sget v0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 0
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 427
    sput p1, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    .line 428
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 429
    return-void
.end method

.method public Width(I)V
    .locals 1
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the width of the list on the view."
    .end annotation

    .prologue
    .line 182
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 183
    const/4 p1, -0x2

    .line 185
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 186
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public itemsToColoredText()[Landroid/text/Spannable;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 269
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    .line 270
    .local v4, "size":I
    new-array v3, v4, [Landroid/text/Spannable;

    .line 271
    .local v3, "objects":[Landroid/text/Spannable;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, v4, :cond_0

    .line 272
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v5, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "itemString":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 276
    .local v0, "chars":Landroid/text/Spannable;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    sget v6, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v6

    invoke-interface {v0, v5, v7, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 277
    add-int/lit8 v5, v1, -0x1

    aput-object v0, v3, v5

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v0    # "chars":Landroid/text/Spannable;
    .end local v2    # "itemString":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public onDismiss(Landroid/widget/AbsListView;[I)V
    .locals 7
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "reverseSortedPositions"    # [I

    .prologue
    .line 566
    move-object v1, p2

    .local v1, "arr$":[I
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v5, v1, v2

    .line 567
    .local v5, "position":I
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListView;->mAdapter:Lcom/google/appinventor/components/runtime/ListView$MyAdapter;

    invoke-virtual {v6, v5}, Lcom/google/appinventor/components/runtime/ListView$MyAdapter;->remove(I)Ljava/lang/Object;

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 570
    .end local v5    # "position":I
    :cond_0
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListView;->itemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 571
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 572
    .local v4, "origList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 573
    .local v0, "anItem":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListView;->itemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 574
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->AfterDeleting(Ljava/lang/String;)V

    .line 578
    .end local v0    # "anItem":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListView;->itemsArrayList:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 581
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 342
    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 343
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->AfterPicking()V

    .line 344
    return-void
.end method

.method public setAdapterData()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->itemsToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->itemsArrayList:Ljava/util/ArrayList;

    .line 259
    new-instance v0, Lcom/google/appinventor/components/runtime/ListView$MyAdapter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->itemsArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/appinventor/components/runtime/ListView$MyAdapter;-><init>(Lcom/google/appinventor/components/runtime/ListView;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->mAdapter:Lcom/google/appinventor/components/runtime/ListView$MyAdapter;

    .line 261
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->mAdapter:Lcom/google/appinventor/components/runtime/ListView$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 264
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 362
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    .line 363
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 364
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 366
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 367
    return-void
.end method
