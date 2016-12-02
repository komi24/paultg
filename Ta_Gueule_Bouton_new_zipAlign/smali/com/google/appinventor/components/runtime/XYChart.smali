.class public final Lcom/google/appinventor/components/runtime/XYChart;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "XYChart.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CHARTS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "XYChart component allows you blah blah blah blah blah"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "Androidplot-core-0.5.0-release.jar"
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x1e


# instance fields
.field private legendX:Ljava/lang/String;

.field private legendY:Ljava/lang/String;

.field private legendZ:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private xAxisSeries:Lcom/androidplot/xy/SimpleXYSeries;

.field private xHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private xLabel:Ljava/lang/String;

.field private xMaxValue:F

.field private xMinValue:F

.field private xyPlot:Lcom/androidplot/xy/XYPlot;

.field private yAxisSeries:Lcom/androidplot/xy/SimpleXYSeries;

.field private yHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private yLabel:Ljava/lang/String;

.field private yMaxValue:F

.field private yMinValue:F

.field private zAxisSeries:Lcom/androidplot/xy/SimpleXYSeries;

.field private zHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 9
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/high16 v5, -0x10000

    const v8, -0xff0100

    const v7, -0xffff01

    const/4 v6, 0x0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 22
    const-string/jumbo v0, "Title"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->title:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, " X Axis"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->legendX:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, " Y Axis"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->legendY:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, " Z Axis"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->legendZ:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xMinValue:F

    .line 36
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xMaxValue:F

    .line 37
    const-string/jumbo v0, "X Axis"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xLabel:Ljava/lang/String;

    .line 39
    const/high16 v0, -0x3ccc0000    # -180.0f

    iput v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->yMinValue:F

    .line 40
    const v0, 0x43b38000    # 359.0f

    iput v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->yMaxValue:F

    .line 41
    const-string/jumbo v0, "Y Axis"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->yLabel:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/androidplot/xy/XYPlot;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/XYChart;->title:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/XYPlot;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xHistory:Ljava/util/LinkedList;

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->yHistory:Ljava/util/LinkedList;

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->zHistory:Ljava/util/LinkedList;

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0, v6}, Lcom/androidplot/xy/XYPlot;->setBorderPaint(Landroid/graphics/Paint;)V

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/XYPlot;->setMinimumWidth(I)V

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    const/16 v1, 0xde

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/XYPlot;->setMinimumHeight(I)V

    .line 65
    new-instance v0, Lcom/androidplot/xy/SimpleXYSeries;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/XYChart;->legendX:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xAxisSeries:Lcom/androidplot/xy/SimpleXYSeries;

    .line 66
    new-instance v0, Lcom/androidplot/xy/SimpleXYSeries;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/XYChart;->legendY:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->yAxisSeries:Lcom/androidplot/xy/SimpleXYSeries;

    .line 67
    new-instance v0, Lcom/androidplot/xy/SimpleXYSeries;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/XYChart;->legendZ:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->zAxisSeries:Lcom/androidplot/xy/SimpleXYSeries;

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->disableAllMarkup()V

    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/XYChart;->xAxisSeries:Lcom/androidplot/xy/SimpleXYSeries;

    const-class v2, Lcom/androidplot/xy/LineAndPointRenderer;

    new-instance v3, Lcom/androidplot/xy/LineAndPointFormatter;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/androidplot/xy/XYPlot;->addSeries(Lcom/androidplot/series/Series;Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/XYChart;->yAxisSeries:Lcom/androidplot/xy/SimpleXYSeries;

    const-class v2, Lcom/androidplot/xy/LineAndPointRenderer;

    new-instance v3, Lcom/androidplot/xy/LineAndPointFormatter;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/androidplot/xy/XYPlot;->addSeries(Lcom/androidplot/series/Series;Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/XYChart;->zAxisSeries:Lcom/androidplot/xy/SimpleXYSeries;

    const-class v2, Lcom/androidplot/xy/LineAndPointRenderer;

    new-instance v3, Lcom/androidplot/xy/LineAndPointFormatter;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/androidplot/xy/XYPlot;->addSeries(Lcom/androidplot/series/Series;Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 98
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 100
    return-void
.end method


# virtual methods
.method public RefreshChart(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 10
    .param p1, "valuesList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 200
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "objects":[Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    .line 214
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .line 215
    .local v2, "x":Ljava/lang/Float;
    const/4 v3, 0x0

    .line 216
    .local v3, "y":Ljava/lang/Float;
    const/4 v4, 0x0

    .line 218
    .local v4, "z":Ljava/lang/Float;
    new-instance v2, Ljava/lang/Float;

    .end local v2    # "x":Ljava/lang/Float;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 222
    .restart local v2    # "x":Ljava/lang/Float;
    if-le v0, v8, :cond_2

    new-instance v3, Ljava/lang/Float;

    .end local v3    # "y":Ljava/lang/Float;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 223
    .restart local v3    # "y":Ljava/lang/Float;
    :cond_2
    if-le v0, v9, :cond_3

    new-instance v4, Ljava/lang/Float;

    .end local v4    # "z":Ljava/lang/Float;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 227
    .restart local v4    # "z":Ljava/lang/Float;
    :cond_3
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/XYChart;->xHistory:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/16 v6, 0x1e

    if-le v5, v6, :cond_5

    .line 228
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/XYChart;->xHistory:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 229
    if-le v0, v8, :cond_4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/XYChart;->yHistory:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 230
    :cond_4
    if-le v0, v9, :cond_5

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/XYChart;->zHistory:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 234
    :cond_5
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/XYChart;->xHistory:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 235
    if-le v0, v8, :cond_6

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/XYChart;->yHistory:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 236
    :cond_6
    if-le v0, v9, :cond_7

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/XYChart;->zHistory:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 240
    :cond_7
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/XYChart;->xAxisSeries:Lcom/androidplot/xy/SimpleXYSeries;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/XYChart;->xHistory:Ljava/util/LinkedList;

    sget-object v7, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->Y_VALS_ONLY:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    invoke-virtual {v5, v6, v7}, Lcom/androidplot/xy/SimpleXYSeries;->setModel(Ljava/util/List;Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;)V

    .line 241
    if-le v0, v8, :cond_8

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/XYChart;->yAxisSeries:Lcom/androidplot/xy/SimpleXYSeries;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/XYChart;->yHistory:Ljava/util/LinkedList;

    sget-object v7, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->Y_VALS_ONLY:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    invoke-virtual {v5, v6, v7}, Lcom/androidplot/xy/SimpleXYSeries;->setModel(Ljava/util/List;Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;)V

    .line 242
    :cond_8
    if-le v0, v9, :cond_9

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/XYChart;->zAxisSeries:Lcom/androidplot/xy/SimpleXYSeries;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/XYChart;->zHistory:Ljava/util/LinkedList;

    sget-object v7, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->Y_VALS_ONLY:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    invoke-virtual {v5, v6, v7}, Lcom/androidplot/xy/SimpleXYSeries;->setModel(Ljava/util/List;Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;)V

    .line 244
    :cond_9
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v5}, Lcom/androidplot/xy/XYPlot;->redraw()V

    goto/16 :goto_0
.end method

.method public Title()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->title:Ljava/lang/String;

    return-object v0
.end method

.method public Title(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Title"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/XYChart;->title:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYPlot;->setTitle(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->redraw()V

    .line 124
    return-void
.end method

.method public XAxisLabel()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xLabel:Ljava/lang/String;

    return-object v0
.end method

.method public XAxisLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "X Axis"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/XYChart;->xLabel:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYPlot;->setDomainLabel(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->redraw()V

    .line 151
    return-void
.end method

.method public XMaxValue()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 142
    iget v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xMaxValue:F

    return v0
.end method

.method public XMaxValue(F)V
    .locals 4
    .param p1, "value"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 134
    iput p1, p0, Lcom/google/appinventor/components/runtime/XYChart;->xMaxValue:F

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    iget v1, p0, Lcom/google/appinventor/components/runtime/XYChart;->xMinValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sget-object v3, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/androidplot/xy/XYPlot;->setDomainBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->redraw()V

    .line 138
    return-void
.end method

.method public XMinValue()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 115
    iget v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xMinValue:F

    return v0
.end method

.method public XMinValue(F)V
    .locals 4
    .param p1, "value"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 107
    iput p1, p0, Lcom/google/appinventor/components/runtime/XYChart;->xMinValue:F

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/XYChart;->xMaxValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sget-object v3, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/androidplot/xy/XYPlot;->setDomainBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->redraw()V

    .line 111
    return-void
.end method

.method public YAxisLabel()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->yLabel:Ljava/lang/String;

    return-object v0
.end method

.method public YAxisLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Y Axis"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/XYChart;->yLabel:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYPlot;->setRangeLabel(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->redraw()V

    .line 189
    return-void
.end method

.method public YMaxValue()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 181
    iget v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->yMaxValue:F

    return v0
.end method

.method public YMaxValue(F)V
    .locals 4
    .param p1, "value"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "359"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 174
    iput p1, p0, Lcom/google/appinventor/components/runtime/XYChart;->yMaxValue:F

    .line 175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    iget v1, p0, Lcom/google/appinventor/components/runtime/XYChart;->yMinValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sget-object v3, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/androidplot/xy/XYPlot;->setRangeBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->redraw()V

    .line 177
    return-void
.end method

.method public YMinValue()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 168
    iget v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->yMinValue:F

    return v0
.end method

.method public YMinValue(F)V
    .locals 4
    .param p1, "value"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "-180"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 161
    iput p1, p0, Lcom/google/appinventor/components/runtime/XYChart;->yMinValue:F

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/XYChart;->yMaxValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sget-object v3, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/androidplot/xy/XYPlot;->setRangeBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->redraw()V

    .line 164
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/XYChart;->xyPlot:Lcom/androidplot/xy/XYPlot;

    return-object v0
.end method
