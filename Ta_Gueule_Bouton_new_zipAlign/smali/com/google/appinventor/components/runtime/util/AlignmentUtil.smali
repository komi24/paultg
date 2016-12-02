.class public Lcom/google/appinventor/components/runtime/util/AlignmentUtil;
.super Ljava/lang/Object;
.source "AlignmentUtil.java"


# instance fields
.field scrollLayout:Landroid/widget/LinearLayout;

.field viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "viewLayout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->scrollLayout:Landroid/widget/LinearLayout;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V
    .locals 0
    .param p1, "viewLayout"    # Lcom/google/appinventor/components/runtime/LinearLayout;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 24
    return-void
.end method


# virtual methods
.method public setHorizontalAlignment(I)V
    .locals 4
    .param p1, "alignment"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 36
    packed-switch p1, :pswitch_data_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad value to setHorizontalAlignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->scrollLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/LinearLayout;->setHorizontalGravity(I)V

    .line 52
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->scrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    goto :goto_0

    .line 42
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->scrollLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/LinearLayout;->setHorizontalGravity(I)V

    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->scrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    goto :goto_0

    .line 46
    :pswitch_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->scrollLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setHorizontalGravity(I)V

    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->scrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setVerticalAlignment(I)V
    .locals 4
    .param p1, "alignment"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x50

    const/16 v2, 0x30

    const/16 v1, 0x10

    .line 60
    packed-switch p1, :pswitch_data_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad value to setVerticalAlignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->scrollLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/LinearLayout;->setVerticalGravity(I)V

    .line 76
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->scrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    goto :goto_0

    .line 66
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->scrollLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setVerticalGravity(I)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->scrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    goto :goto_0

    .line 70
    :pswitch_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->scrollLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/LinearLayout;->setVerticalGravity(I)V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->scrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
