.class public Lcom/sonymobile/taskswitcher/animation/SlideRenderer;
.super Ljava/lang/Object;
.source "SlideRenderer.java"

# interfaces
.implements Lcom/sonymobile/taskswitcher/animation/Renderer;
.implements Lcom/sonymobile/taskswitcher/animation/Recyclable;


# static fields
.field private static final mRecycleStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/taskswitcher/animation/SlideRenderer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentRect:Landroid/graphics/RectF;

.field private final mDynamicsLeft:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

.field private final mDynamicsTop:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

.field private mDynamicsZ:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mRecycleStack:Ljava/util/LinkedList;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mCurrentRect:Landroid/graphics/RectF;

    .line 43
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 46
    new-instance v0, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-direct {v0}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsZ:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    .line 47
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsZ:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    const/high16 v1, 0x4248

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->setSpring(FF)V

    .line 50
    new-instance v0, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-direct {v0}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsLeft:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    .line 51
    new-instance v0, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-direct {v0}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsTop:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    .line 52
    return-void
.end method

.method private drawView(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 4
    .parameter "view"
    .parameter "canvas"
    .parameter "rect"
    .parameter "zFactor"

    .prologue
    const/4 v3, 0x0

    .line 164
    invoke-static {p1}, Lcom/sonymobile/taskswitcher/animation/ViewSnapshot;->getSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    .local v0, snapshot:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 168
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 169
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 170
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 172
    :cond_0
    return-void
.end method

.method public static obtain()Lcom/sonymobile/taskswitcher/animation/SlideRenderer;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mRecycleStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mRecycleStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;

    .line 63
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;

    invoke-direct {v0}, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;-><init>()V

    goto :goto_0
.end method

.method private update(Landroid/graphics/Rect;J)F
    .locals 3
    .parameter "targetRect"
    .parameter "now"

    .prologue
    .line 144
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsZ:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v1, p2, p3}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->update(J)V

    .line 145
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsZ:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->getPosition()F

    move-result v0

    .line 146
    .local v0, zFactor:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 147
    neg-float v0, v0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsLeft:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->setMaxPosition(F)V

    .line 151
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsLeft:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->setMinPosition(F)V

    .line 152
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsTop:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->setMaxPosition(F)V

    .line 153
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsTop:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->setMinPosition(F)V

    .line 156
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsLeft:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v1, p2, p3}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->update(J)V

    .line 157
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsTop:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v1, p2, p3}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->update(J)V

    .line 160
    return v0
.end method


# virtual methods
.method public draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z
    .locals 6
    .parameter "view"
    .parameter "canvas"
    .parameter "targetRect"
    .parameter "now"

    .prologue
    const v5, 0x3dcccccd

    const/high16 v4, 0x4000

    .line 74
    invoke-direct {p0, p3, p4, p5}, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->update(Landroid/graphics/Rect;J)F

    move-result v0

    .line 77
    .local v0, zFactor:F
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mCurrentRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsLeft:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->getPosition()F

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsTop:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v3}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->getPosition()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 80
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mCurrentRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->drawView(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    .line 83
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsLeft:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v1, v4, v4}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->isAtRest(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsTop:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v1, v4, v4}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->isAtRest(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsZ:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    const v2, 0x3c23d70a

    invoke-virtual {v1, v5, v2}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->isAtRest(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    cmpg-float v1, v0, v5

    if-gez v1, :cond_0

    .line 85
    const/4 v1, 0x0

    .line 87
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCurrentRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "outRect"

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mCurrentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 113
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mCurrentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 114
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mCurrentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 115
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mCurrentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 117
    :cond_0
    return-void
.end method

.method public offset(IIJ)V
    .locals 3
    .parameter "dx"
    .parameter "dy"
    .parameter "now"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mCurrentRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 123
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsLeft:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    iget-object v1, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsLeft:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->getPosition()F

    move-result v1

    int-to-float v2, p1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsLeft:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->getVelocity()F

    move-result v2

    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->setState(FFJ)V

    .line 124
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsTop:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    iget-object v1, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsTop:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->getPosition()F

    move-result v1

    int-to-float v2, p2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsTop:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->getVelocity()F

    move-result v2

    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->setState(FFJ)V

    .line 125
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mRecycleStack:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 7
    .parameter "command"
    .parameter "x"
    .parameter "y"
    .parameter "extras"

    .prologue
    const/high16 v6, 0x43c8

    const v5, 0x3f666666

    const/4 v1, 0x0

    .line 129
    const-string v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsZ:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v0, v1}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->setMaxPosition(F)V

    .line 132
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsZ:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v0, v1}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->setMinPosition(F)V

    .line 133
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsZ:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    const/high16 v1, 0x4416

    const v2, 0x3f59999a

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->setSpring(FF)V

    .line 134
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsZ:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    iget-object v1, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsZ:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->getPosition()F

    move-result v1

    const/high16 v2, 0x4270

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->setState(FFJ)V

    .line 137
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsLeft:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v0, v6, v5}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->setSpring(FF)V

    .line 138
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsTop:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v0, v6, v5}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->setSpring(FF)V

    .line 140
    :cond_0
    return-void
.end method

.method public start(Landroid/graphics/Rect;IIJ)V
    .locals 6
    .parameter "startRect"
    .parameter "xOffset"
    .parameter "yOffst"
    .parameter "now"

    .prologue
    const/high16 v5, 0x42c8

    const v4, 0x3f666666

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 97
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsLeft:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2, p4, p5}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->setState(FFJ)V

    .line 98
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsTop:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2, p4, p5}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->setState(FFJ)V

    .line 99
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsLeft:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v0, v5, v4}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->setSpring(FF)V

    .line 100
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsTop:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v0, v5, v4}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->setSpring(FF)V

    .line 103
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsZ:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v0, v3}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->setMaxPosition(F)V

    .line 104
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsZ:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v0, v3}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->setMinPosition(F)V

    .line 105
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsZ:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    invoke-virtual {v0, v2, v2, p4, p5}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->setState(FFJ)V

    .line 106
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->mDynamicsZ:Lcom/sonymobile/taskswitcher/animation/SpringDynamics;

    const/high16 v1, 0x4248

    invoke-virtual {v0, v1, v3}, Lcom/sonymobile/taskswitcher/animation/SpringDynamics;->setSpring(FF)V

    .line 107
    return-void
.end method
