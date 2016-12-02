.class Lcom/google/appinventor/components/runtime/Form$7;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->showExitApplicationNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    .prologue
    .line 1609
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$7;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$7;->this$0:Lcom/google/appinventor/components/runtime/Form;

    # invokes: Lcom/google/appinventor/components/runtime/Form;->closeApplicationFromMenu()V
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$600(Lcom/google/appinventor/components/runtime/Form;)V

    .line 1614
    return-void
.end method
