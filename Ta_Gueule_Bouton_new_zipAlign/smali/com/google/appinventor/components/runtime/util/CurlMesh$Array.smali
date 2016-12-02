.class Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;
.super Ljava/lang/Object;
.source "CurlMesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/CurlMesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Array"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mArray:[Ljava/lang/Object;

.field private mCapacity:I

.field private mSize:I

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/CurlMesh;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/CurlMesh;I)V
    .locals 1
    .param p2, "capacity"    # I

    .prologue
    .line 946
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;, "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array<TT;>;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->this$0:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 947
    iput p2, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mCapacity:I

    .line 948
    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mArray:[Ljava/lang/Object;

    .line 949
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 952
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;, "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mSize:I

    if-gt p1, v1, :cond_0

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mSize:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mCapacity:I

    if-lt v1, v2, :cond_1

    .line 953
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 955
    :cond_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mSize:I

    .local v0, "i":I
    :goto_0
    if-le v0, p1, :cond_2

    .line 956
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mArray:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mArray:[Ljava/lang/Object;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 955
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 958
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mArray:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 959
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mSize:I

    .line 960
    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 963
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;, "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mSize:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mCapacity:I

    if-lt v0, v1, :cond_0

    .line 964
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mArray:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mSize:I

    aput-object p1, v0, v1

    .line 967
    return-void
.end method

.method public addAll(Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 970
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;, "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array<TT;>;"
    .local p1, "array":Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;, "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array<TT;>;"
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mSize:I

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mCapacity:I

    if-le v1, v2, :cond_0

    .line 971
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 973
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 974
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mSize:I

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 973
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 976
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 979
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;, "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mSize:I

    .line 980
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 984
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;, "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array<TT;>;"
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mSize:I

    if-lt p1, v0, :cond_1

    .line 985
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 987
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 992
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;, "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array<TT;>;"
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mSize:I

    if-lt p1, v2, :cond_1

    .line 993
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 995
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mArray:[Ljava/lang/Object;

    aget-object v1, v2, p1

    .line 996
    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 997
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mArray:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 996
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 999
    :cond_2
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mSize:I

    .line 1000
    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1004
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;, "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array<TT;>;"
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->mSize:I

    return v0
.end method
