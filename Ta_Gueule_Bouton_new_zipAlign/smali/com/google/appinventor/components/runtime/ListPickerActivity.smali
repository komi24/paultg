.class public Lcom/google/appinventor/components/runtime/ListPickerActivity;
.super Landroid/app/Activity;
.source "ListPickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/nhaarman/listviewanimations/itemmanipulation/OnDismissCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;
    }
.end annotation


# static fields
.field static backgroundColor:I

.field static itemColor:I


# instance fields
.field private closeAnim:Ljava/lang/String;

.field deletedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasRemovedItems:Z

.field private isSwipeToArchive:Z

.field items:[Ljava/lang/String;

.field itemsArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field mAdapter:Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;

.field txtSearchBox:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->closeAnim:Ljava/lang/String;

    .line 48
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->isSwipeToArchive:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->itemsArrayList:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->deletedList:Ljava/util/ArrayList;

    .line 59
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hasRemovedItems:Z

    .line 334
    return-void
.end method

.method private _setBottomRightAdapter()V
    .locals 3

    .prologue
    .line 302
    new-instance v0, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingBottomInAnimationAdapter;

    new-instance v1, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingRightInAnimationAdapter;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->mAdapter:Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;

    invoke-direct {v1, v2}, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingRightInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    invoke-direct {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingBottomInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    .line 303
    .local v0, "animAdapter":Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 305
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 306
    return-void
.end method

.method private itemsToArrayList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->items:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->items:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 368
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 374
    :goto_0
    return-object v0

    .line 371
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->items:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 372
    .local v0, "alistItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->items:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setAlphaAdapter()V
    .locals 2

    .prologue
    .line 273
    new-instance v0, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/AlphaInAnimationAdapter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->mAdapter:Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;

    invoke-direct {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/AlphaInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    .line 274
    .local v0, "animAdapter":Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 275
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 276
    return-void
.end method

.method private setBottomAdapter()V
    .locals 2

    .prologue
    .line 291
    new-instance v0, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingBottomInAnimationAdapter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->mAdapter:Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;

    invoke-direct {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingBottomInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    .line 292
    .local v0, "animAdapter":Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 293
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 294
    return-void
.end method

.method private setBottomRightAdapter()V
    .locals 3

    .prologue
    .line 297
    new-instance v0, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingBottomInAnimationAdapter;

    new-instance v1, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingRightInAnimationAdapter;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->mAdapter:Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;

    invoke-direct {v1, v2}, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingRightInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    invoke-direct {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingBottomInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    .line 298
    .local v0, "animAdapter":Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 299
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    return-void
.end method

.method private setLeftAdapter()V
    .locals 2

    .prologue
    .line 279
    new-instance v0, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingLeftInAnimationAdapter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->mAdapter:Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;

    invoke-direct {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingLeftInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    .line 280
    .local v0, "animAdapter":Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 281
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 282
    return-void
.end method

.method private setRightAdapter()V
    .locals 2

    .prologue
    .line 285
    new-instance v0, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingRightInAnimationAdapter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->mAdapter:Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;

    invoke-direct {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/SwingRightInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    .line 286
    .local v0, "animAdapter":Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 287
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 288
    return-void
.end method

.method private setScaleAdapter()V
    .locals 2

    .prologue
    .line 329
    new-instance v0, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/ScaleInAnimationAdapter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->mAdapter:Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;

    invoke-direct {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/prepared/ScaleInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    .line 330
    .local v0, "animAdapter":Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/swinginadapters/AnimationAdapter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 331
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 332
    return-void
.end method

.method private setSwipeDismissAdapter()V
    .locals 2

    .prologue
    .line 309
    new-instance v0, Lcom/nhaarman/listviewanimations/itemmanipulation/swipedismiss/SwipeDismissAdapter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->mAdapter:Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;

    invoke-direct {v0, v1, p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/swipedismiss/SwipeDismissAdapter;-><init>(Landroid/widget/BaseAdapter;Lcom/nhaarman/listviewanimations/itemmanipulation/OnDismissCallback;)V

    .line 310
    .local v0, "adapter":Lcom/nhaarman/listviewanimations/itemmanipulation/swipedismiss/SwipeDismissAdapter;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/swipedismiss/SwipeDismissAdapter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 311
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 312
    return-void
.end method

.method private setupPickerStyle()V
    .locals 3

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_STYLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "style":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const-string/jumbo v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x103000c

    invoke-super {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    .line 197
    :cond_2
    const-string/jumbo v1, "dialog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x103006f

    invoke-super {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    .line 199
    :cond_3
    const-string/jumbo v1, "Translucent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x103006e

    invoke-super {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0
.end method

.method private setupStyle()V
    .locals 3

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ANIMATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "animationType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->mAdapter:Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 227
    :goto_0
    return-void

    .line 207
    :cond_1
    const-string/jumbo v1, "bottom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setBottomAdapter()V

    goto :goto_0

    .line 209
    :cond_2
    const-string/jumbo v1, "bottomright"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 210
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setBottomRightAdapter()V

    goto :goto_0

    .line 211
    :cond_3
    const-string/jumbo v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 212
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setLeftAdapter()V

    goto :goto_0

    .line 213
    :cond_4
    const-string/jumbo v1, "scale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 214
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setScaleAdapter()V

    goto :goto_0

    .line 215
    :cond_5
    const-string/jumbo v1, "alpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 216
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setAlphaAdapter()V

    goto :goto_0

    .line 217
    :cond_6
    const-string/jumbo v1, "swipe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 218
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setSwipeDismissAdapter()V

    .line 219
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->isSwipeToArchive:Z

    goto :goto_0

    .line 220
    :cond_7
    const-string/jumbo v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 221
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setRightAdapter()V

    goto :goto_0

    .line 223
    :cond_8
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setRightAdapter()V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 264
    .local v0, "resultIntent":Landroid/content/Intent;
    sget-object v1, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ITEMS:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->itemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 266
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 269
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->finish()V

    .line 270
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    const/16 v10, 0xa

    const/4 v9, 0x1

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    .local v6, "viewLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setupPickerStyle()V

    .line 79
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 81
    .local v1, "myIntent":Landroid/content/Intent;
    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ANIM_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 82
    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ANIM_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->closeAnim:Ljava/lang/String;

    .line 85
    :cond_0
    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ORIENTATION_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 86
    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ORIENTATION_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "orientation":Ljava/lang/String;
    const-string/jumbo v7, "portrait"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 88
    invoke-virtual {p0, v9}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setRequestedOrientation(I)V

    .line 95
    .end local v2    # "orientation":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_TITLE:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 96
    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_TITLE:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, "title":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    .end local v5    # "title":Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ARG_NAME:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 100
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    sget-object v8, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ARG_NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->items:[Ljava/lang/String;

    .line 101
    new-instance v7, Landroid/widget/ListView;

    invoke-direct {v7, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    .line 102
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->itemsToArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->itemsArrayList:Ljava/util/ArrayList;

    .line 110
    new-instance v7, Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->itemsArrayList:Ljava/util/ArrayList;

    invoke-direct {v7, p0, v8}, Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->mAdapter:Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;

    .line 111
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setupStyle()V

    .line 116
    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ITEM_TEXT_COLOR:Ljava/lang/String;

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/google/appinventor/components/runtime/ListPickerActivity;->itemColor:I

    .line 117
    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_BACKGROUND_COLOR:Ljava/lang/String;

    const/high16 v8, -0x1000000

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/google/appinventor/components/runtime/ListPickerActivity;->backgroundColor:I

    .line 118
    sget v7, Lcom/google/appinventor/components/runtime/ListPickerActivity;->backgroundColor:I

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 120
    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_SHOW_SEARCH_BAR:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "showFilterBar":Ljava/lang/String;
    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_SHOW_SEARCH_BAR_TEXT:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "showFilterBarText":Ljava/lang/String;
    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->txtSearchBox:Landroid/widget/EditText;

    .line 125
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 126
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->txtSearchBox:Landroid/widget/EditText;

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setWidth(I)V

    .line 127
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v7, v10, v10, v10, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 130
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 131
    :cond_3
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->txtSearchBox:Landroid/widget/EditText;

    const-string/jumbo v8, "Search list..."

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 136
    :goto_1
    if-eqz v3, :cond_4

    const-string/jumbo v7, "true"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 137
    :cond_4
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v7, v12}, Landroid/widget/EditText;->setVisibility(I)V

    .line 141
    :cond_5
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getVisibility()I

    move-result v7

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->isSwipeToArchive:Z

    if-eqz v7, :cond_6

    .line 142
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v7, v12}, Landroid/widget/EditText;->setVisibility(I)V

    .line 143
    const-string/jumbo v7, "With Swipe, you can\'t use ShowFilterBar"

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 147
    :cond_6
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->txtSearchBox:Landroid/widget/EditText;

    new-instance v8, Lcom/google/appinventor/components/runtime/ListPickerActivity$1;

    invoke-direct {v8, p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity$1;-><init>(Lcom/google/appinventor/components/runtime/ListPickerActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 172
    .end local v3    # "showFilterBar":Ljava/lang/String;
    .end local v4    # "showFilterBarText":Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setContentView(Landroid/view/View;)V

    .line 176
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 179
    const-string/jumbo v7, "input_method"

    invoke-virtual {p0, v7}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 180
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v0, v7, v11}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 181
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 182
    return-void

    .line 90
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v2    # "orientation":Ljava/lang/String;
    :cond_7
    const-string/jumbo v7, "landscape"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 91
    invoke-virtual {p0, v11}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 133
    .end local v2    # "orientation":Ljava/lang/String;
    .restart local v3    # "showFilterBar":Ljava/lang/String;
    .restart local v4    # "showFilterBarText":Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 168
    .end local v3    # "showFilterBar":Ljava/lang/String;
    .end local v4    # "showFilterBarText":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0, v11}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setResult(I)V

    .line 169
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->finish()V

    .line 170
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->closeAnim:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onDismiss(Landroid/widget/AbsListView;[I)V
    .locals 5
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "reverseSortedPositions"    # [I

    .prologue
    .line 316
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 317
    .local v3, "position":I
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->mAdapter:Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;

    invoke-virtual {v4, v3}, Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;->remove(I)Ljava/lang/Object;

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v3    # "position":I
    :cond_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->itemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 325
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hasRemovedItems:Z

    .line 326
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 231
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    .local v1, "selected":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 233
    .local v0, "resultIntent":Landroid/content/Intent;
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_RESULT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_RESULT_INDEX:Ljava/lang/String;

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ITEMS:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->itemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 236
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->closeAnim:Ljava/lang/String;

    .line 237
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 238
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->finish()V

    .line 239
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->closeAnim:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 246
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 247
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 248
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->closeAnim:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    .line 253
    .end local v0    # "handled":Z
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
