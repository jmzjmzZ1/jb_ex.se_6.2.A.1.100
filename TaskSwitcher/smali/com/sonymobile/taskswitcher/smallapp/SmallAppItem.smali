.class public Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
.super Landroid/widget/RelativeLayout;
.source "SmallAppItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem$AppNameComparator;,
        Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem$AppComparator;
    }
.end annotation


# instance fields
.field private mAnimationRenderer:Lcom/sonymobile/taskswitcher/animation/Renderer;

.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/String;

.field private mComponent:Landroid/content/ComponentName;

.field private mDrawRect:Landroid/graphics/Rect;

.field private mInAnimationDraw:Z

.field private mIsDragging:Z

.field private mIsInUse:Z

.field private mIsWidget:Z

.field private mLocationInWin:[I

.field private mUniqueWidgetId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mDrawRect:Landroid/graphics/Rect;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mLocationInWin:[I

    .line 64
    iput-boolean v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mInAnimationDraw:Z

    .line 66
    iput-boolean v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mIsDragging:Z

    .line 68
    iput-boolean v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mIsWidget:Z

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mIsInUse:Z

    .line 80
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mUniqueWidgetId:J

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mDrawRect:Landroid/graphics/Rect;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mLocationInWin:[I

    .line 64
    iput-boolean v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mInAnimationDraw:Z

    .line 66
    iput-boolean v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mIsDragging:Z

    .line 68
    iput-boolean v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mIsWidget:Z

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mIsInUse:Z

    .line 80
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mUniqueWidgetId:J

    .line 109
    return-void
.end method

.method private getLocationInWindow2([I)V
    .locals 8
    .parameter "location"

    .prologue
    const/high16 v7, 0x3f00

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 227
    const/4 v3, 0x2

    new-array v0, v3, [F

    .line 228
    .local v0, position:[F
    aget v3, v0, v5

    iget v4, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mLeft:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v0, v5

    .line 229
    aget v3, v0, v6

    iget v4, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mTop:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v0, v6

    .line 231
    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mParent:Landroid/view/ViewParent;

    .line 232
    .local v2, viewParent:Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 233
    check-cast v1, Landroid/view/View;

    .line 235
    .local v1, view:Landroid/view/View;
    aget v3, v0, v5

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    aput v3, v0, v5

    .line 236
    aget v3, v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    aput v3, v0, v6

    .line 238
    aget v3, v0, v5

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v0, v5

    .line 239
    aget v3, v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v0, v6

    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 242
    goto :goto_0

    .line 245
    .end local v1           #view:Landroid/view/View;
    :cond_0
    aget v3, v0, v5

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 246
    aget v3, v0, v5

    add-float/2addr v3, v7

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    aput v3, p1, v5

    .line 251
    :goto_1
    aget v3, p1, v6

    if-gez v3, :cond_2

    .line 252
    aget v3, v0, v6

    add-float/2addr v3, v7

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    aput v3, p1, v6

    .line 256
    :goto_2
    return-void

    .line 248
    :cond_1
    aget v3, v0, v5

    add-float/2addr v3, v7

    float-to-int v3, v3

    aput v3, p1, v5

    goto :goto_1

    .line 254
    :cond_2
    aget v3, v0, v6

    add-float/2addr v3, v7

    float-to-int v3, v3

    aput v3, p1, v6

    goto :goto_2
.end method

.method private setup(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V
    .locals 3
    .parameter "appName"
    .parameter "appIcon"
    .parameter "componentName"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mAppName:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 125
    iput-object p3, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mComponent:Landroid/content/ComponentName;

    .line 127
    const v2, 0x7f0d0006

    invoke-virtual {p0, v2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 128
    .local v0, appIconView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 129
    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_0
    const v2, 0x7f0d0007

    invoke-virtual {p0, v2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 132
    .local v1, appNameView:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 133
    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mIsDragging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mInAnimationDraw:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mAnimationRenderer:Lcom/sonymobile/taskswitcher/animation/Renderer;

    if-nez v0, :cond_1

    .line 154
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 156
    :cond_1
    return-void
.end method

.method public drawMoveModeAnimation(Landroid/graphics/Canvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    const/4 v6, 0x0

    .line 165
    iget-boolean v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mIsDragging:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mAnimationRenderer:Lcom/sonymobile/taskswitcher/animation/Renderer;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mLocationInWin:[I

    invoke-direct {p0, v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getLocationInWindow2([I)V

    .line 167
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 168
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mDrawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mLocationInWin:[I

    aget v1, v1, v6

    add-int/2addr v1, p2

    invoke-virtual {v0, v1, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mInAnimationDraw:Z

    .line 171
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mAnimationRenderer:Lcom/sonymobile/taskswitcher/animation/Renderer;

    iget-object v3, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mDrawRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/taskswitcher/animation/Renderer;->draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z

    .line 172
    iput-boolean v6, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mInAnimationDraw:Z

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->postInvalidate()V

    .line 175
    return-void
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getWidgetId()J
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mUniqueWidgetId:J

    return-wide v0
.end method

.method public isInUse()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mIsInUse:Z

    return v0
.end method

.method public isWidget()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mIsWidget:Z

    return v0
.end method

.method public setDragging(Z)V
    .locals 0
    .parameter "dragging"

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mIsDragging:Z

    .line 204
    return-void
.end method

.method public setInUse(Z)V
    .locals 0
    .parameter "isInUse"

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mIsInUse:Z

    .line 208
    return-void
.end method

.method public setMoveModeEnabled(ZII)V
    .locals 6
    .parameter "enabled"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 182
    if-eqz p1, :cond_1

    .line 183
    invoke-virtual {p0, v2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setPressed(Z)V

    .line 185
    invoke-static {}, Lcom/sonymobile/taskswitcher/animation/SlideRenderer;->obtain()Lcom/sonymobile/taskswitcher/animation/SlideRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mAnimationRenderer:Lcom/sonymobile/taskswitcher/animation/Renderer;

    .line 186
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mAnimationRenderer:Lcom/sonymobile/taskswitcher/animation/Renderer;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mLocationInWin:[I

    invoke-direct {p0, v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getLocationInWindow2([I)V

    .line 188
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 190
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mDrawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mLocationInWin:[I

    aget v1, v1, v2

    add-int/2addr v1, p2

    invoke-virtual {v0, v1, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 191
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mAnimationRenderer:Lcom/sonymobile/taskswitcher/animation/Renderer;

    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mDrawRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/taskswitcher/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    .line 199
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->invalidate()V

    .line 200
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mAnimationRenderer:Lcom/sonymobile/taskswitcher/animation/Renderer;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mAnimationRenderer:Lcom/sonymobile/taskswitcher/animation/Renderer;

    const-string v1, "stop"

    invoke-interface {v0, v1, v2, v2, v3}, Lcom/sonymobile/taskswitcher/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 196
    iput-object v3, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mAnimationRenderer:Lcom/sonymobile/taskswitcher/animation/Renderer;

    goto :goto_0
.end method

.method public setupAsSmallApp(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V
    .locals 0
    .parameter "appName"
    .parameter "appIcon"
    .parameter "componentName"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setup(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V

    .line 120
    return-void
.end method

.method public setupAsSmallAppWidget(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;J)V
    .locals 1
    .parameter "appName"
    .parameter "appIcon"
    .parameter "componentName"
    .parameter "uniqueId"

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mIsWidget:Z

    .line 114
    iput-wide p4, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->mUniqueWidgetId:J

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setup(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V

    .line 116
    return-void
.end method
