.class Lcom/google/appinventor/components/runtime/Form$5;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->MenuItemAdd(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic val$menuItem:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$5;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Form$5;->val$menuItem:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$5;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$5;->val$menuItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->MenuItemSelected(Ljava/lang/String;)V

    .line 1468
    const/4 v0, 0x1

    return v0
.end method
