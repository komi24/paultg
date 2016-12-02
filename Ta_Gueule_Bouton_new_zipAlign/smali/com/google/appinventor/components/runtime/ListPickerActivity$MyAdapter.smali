.class Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;
.super Lcom/nhaarman/listviewanimations/ArrayAdapter;
.source "ListPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ListPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
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
    .line 339
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/nhaarman/listviewanimations/ArrayAdapter;-><init>(Ljava/util/List;)V

    .line 340
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;->mContext:Landroid/content/Context;

    .line 341
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;->getItem(I)Ljava/lang/Object;

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
    .line 350
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 351
    .local v0, "tv":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 352
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0    # "tv":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 359
    .restart local v0    # "tv":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    sget v1, Lcom/google/appinventor/components/runtime/ListPickerActivity;->itemColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    return-object v0
.end method
