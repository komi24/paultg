.class Lcom/google/appinventor/components/runtime/ListView$MyAdapter;
.super Lcom/nhaarman/listviewanimations/ArrayAdapter;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nhaarman/listviewanimations/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ListView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ListView;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 611
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$MyAdapter;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    .line 612
    invoke-direct {p0, p3}, Lcom/nhaarman/listviewanimations/ArrayAdapter;-><init>(Ljava/util/List;)V

    .line 613
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ListView$MyAdapter;->mContext:Landroid/content/Context;

    .line 614
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 618
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ListView$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 623
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 624
    .local v0, "tv":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 626
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView$MyAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0    # "tv":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 627
    .restart local v0    # "tv":Landroid/widget/TextView;
    # getter for: Lcom/google/appinventor/components/runtime/ListView;->textColor:I
    invoke-static {}, Lcom/google/appinventor/components/runtime/ListView;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 636
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ListView$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView$MyAdapter;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/ListView;->FontSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 639
    return-object v0
.end method
