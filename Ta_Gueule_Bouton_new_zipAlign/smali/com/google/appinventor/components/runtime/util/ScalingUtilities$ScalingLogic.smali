.class public final enum Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;
.super Ljava/lang/Enum;
.source "ScalingUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/ScalingUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScalingLogic"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

.field public static final enum CROP:Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

.field public static final enum FIT:Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

    const-string/jumbo v1, "CROP"

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;->CROP:Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

    new-instance v0, Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

    const-string/jumbo v1, "FIT"

    invoke-direct {v0, v1, v3}, Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;->FIT:Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;->CROP:Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;->FIT:Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;->$VALUES:[Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;->$VALUES:[Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

    return-object v0
.end method
