.class Lcom/google/appinventor/components/runtime/GameClient$23;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GameClient;->postMakeNewInstance(Ljava/lang/String;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/GameClient;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GameClient;)V
    .locals 0

    .prologue
    .line 888
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$23;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 895
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$23;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    const-string/jumbo v1, "MakeNewInstance"

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/GameClient;->WebServiceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 888
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$23;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 890
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$23;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    # invokes: Lcom/google/appinventor/components/runtime/GameClient;->processInstanceLists(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->access$100(Lcom/google/appinventor/components/runtime/GameClient;Lorg/json/JSONObject;)V

    .line 891
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$23;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$23;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->NewInstanceMade(Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$23;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    const-string/jumbo v1, "MakeNewInstance"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->FunctionCompleted(Ljava/lang/String;)V

    .line 893
    return-void
.end method
