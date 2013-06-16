.class public Lcom/android/phone/SomcSlidingTab;
.super Landroid/view/ViewGroup;
.source "SomcSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcSlidingTab$OnTriggerListener;
    }
.end annotation


# instance fields
.field private mAbortGhostAnimation:Z

.field private mActivePointerId:I

.field private mBackground:Landroid/widget/ImageView;

.field private mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private mDisabledFirstButton:Landroid/widget/ImageView;

.field private mDisabledSecondButton:Landroid/widget/ImageView;

.field private mDrawableFirstDisabledId:I

.field private mDrawableFirstExpandedId:I

.field private mDrawableFirstGhostId:I

.field private mDrawableSecondDisabledId:I

.field private mDrawableSecondExpandedId:I

.field private mDrawableSecondGhostId:I

.field private mExpandedButton:Landroid/widget/ImageView;

.field private mFingerFlickerDone:Z

.field private final mFingerFlickeringThreshold:I

.field private mFingerOff:I

.field private mFingerStartPos:I

.field private mFirstActivatePoint:I

.field private mFirstBtnPosition:I

.field private mFirstTouchablePart:I

.field private mGhostButton:Landroid/widget/ImageView;

.field private mHapticsEnabled:Z

.field private mIsAnimating:Z

.field private mIsGhostAnimating:Z

.field private mLastMovePos:I

.field private mLongpressGhostStarted:Z

.field private mOnTriggerListener:Lcom/android/phone/SomcSlidingTab$OnTriggerListener;

.field private mPastActionPoint:Z

.field private mPortrait:Z

.field private mPressTimestamp:J

.field private mResetAfterGhost:Z

.field private mSecondActivatePoint:I

.field private mSecondBtnPosition:I

.field private mSecondTouchablePart:I

.field private mSlider2Id:I

.field private mSlider3Id:I

.field private mSliderHeight:I

.field private mSliderMarginBottom:I

.field private mSliderState:B

.field private mSliderWidth:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v7, 0x3ec

    const/16 v6, 0x3eb

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 194
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    iput-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mPastActionPoint:Z

    .line 122
    iput-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mAbortGhostAnimation:Z

    .line 124
    iput-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mLongpressGhostStarted:Z

    .line 126
    iput-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mResetAfterGhost:Z

    .line 128
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/phone/SomcSlidingTab;->mPressTimestamp:J

    .line 131
    iput-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mIsAnimating:Z

    .line 134
    iput-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mIsGhostAnimating:Z

    .line 140
    iput-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickerDone:Z

    .line 143
    iput-boolean v2, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    .line 146
    iput v1, p0, Lcom/android/phone/SomcSlidingTab;->mLastMovePos:I

    .line 151
    iput v1, p0, Lcom/android/phone/SomcSlidingTab;->mActivePointerId:I

    .line 153
    const v1, 0x7f0200d7

    iput v1, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstDisabledId:I

    .line 155
    const v1, 0x7f0200d8

    iput v1, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstExpandedId:I

    .line 157
    const v1, 0x7f0200d5

    iput v1, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstGhostId:I

    .line 159
    const v1, 0x7f0200db

    iput v1, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondDisabledId:I

    .line 161
    const v1, 0x7f0200dc

    iput v1, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondExpandedId:I

    .line 163
    const v1, 0x7f0200d9

    iput v1, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondGhostId:I

    .line 165
    const v1, 0x7f0200bd

    iput v1, p0, Lcom/android/phone/SomcSlidingTab;->mSlider2Id:I

    .line 167
    const v1, 0x7f0200bc

    iput v1, p0, Lcom/android/phone/SomcSlidingTab;->mSlider3Id:I

    .line 172
    iput-byte v3, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    .line 195
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickeringThreshold:I

    .line 197
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 200
    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v4, "Portrait"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iput-boolean v2, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    .line 206
    :goto_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    .line 207
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    .line 208
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    .line 209
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    .line 210
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "haptic_feedback_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/phone/SomcSlidingTab;->mHapticsEnabled:Z

    .line 214
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/16 v5, 0x3ed

    invoke-direct {p0, v1, v4, v2, v5}, Lcom/android/phone/SomcSlidingTab;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 215
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0x3ea

    invoke-direct {p0, v1, v4, v3, v5}, Lcom/android/phone/SomcSlidingTab;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 218
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 221
    .local v0, display:Landroid/view/Display;
    iget-boolean v1, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v1, :cond_3

    .line 222
    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstDisabledId:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/phone/SomcSlidingTab;->mSliderHeight:I

    .line 223
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/phone/SomcSlidingTab;->mSliderWidth:I

    .line 224
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v1, v4, v2, v6}, Lcom/android/phone/SomcSlidingTab;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 227
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v1, v4, v2, v7}, Lcom/android/phone/SomcSlidingTab;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 240
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginBottom:I

    .line 242
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstExpandedId:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v4, 0x3e9

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/phone/SomcSlidingTab;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 244
    return-void

    .line 203
    .end local v0           #display:Landroid/view/Display;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    goto/16 :goto_0

    :cond_1
    move v1, v3

    goto :goto_3

    :cond_2
    move v1, v3

    .line 211
    goto/16 :goto_1

    .line 231
    .restart local v0       #display:Landroid/view/Display;
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstDisabledId:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/phone/SomcSlidingTab;->mSliderWidth:I

    .line 232
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/phone/SomcSlidingTab;->mSliderHeight:I

    .line 233
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v1, v4, v2, v6}, Lcom/android/phone/SomcSlidingTab;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 236
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v1, v4, v2, v7}, Lcom/android/phone/SomcSlidingTab;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/phone/SomcSlidingTab;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingTab;->mResetAfterGhost:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/SomcSlidingTab;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/phone/SomcSlidingTab;->mLongpressGhostStarted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/SomcSlidingTab;)B
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-byte v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/SomcSlidingTab;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SomcSlidingTab;->animateGhostMore(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/SomcSlidingTab;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingTab;->mAbortGhostAnimation:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/SomcSlidingTab;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/phone/SomcSlidingTab;->mIsGhostAnimating:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/SomcSlidingTab;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method private animateExpandedToDisabled(Z)V
    .locals 6
    .parameter "animateExpanded"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 558
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 559
    .local v0, goneToDispAnim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 561
    iget-boolean v1, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 562
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 564
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 573
    :goto_0
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 574
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 575
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 576
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 577
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    if-eqz p1, :cond_3

    .line 580
    iget-byte v1, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 581
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 589
    :cond_0
    :goto_1
    return-void

    .line 567
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 569
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 582
    :cond_2
    iget-byte v1, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 583
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 586
    :cond_3
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 587
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private animateGhost(J)V
    .locals 10
    .parameter "afterMs"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 592
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mAbortGhostAnimation:Z

    if-nez v5, :cond_1

    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-eqz v5, :cond_1

    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, animMove:I
    iput-boolean v8, p0, Lcom/android/phone/SomcSlidingTab;->mIsGhostAnimating:Z

    .line 596
    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-ne v5, v8, :cond_3

    .line 597
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_2

    .line 598
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    :goto_0
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    invoke-direct {p0, v5, v6}, Lcom/android/phone/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 605
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    sub-int v0, v5, v6

    .line 617
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 619
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_5

    move v1, v0

    .line 620
    .local v1, fromX:I
    :goto_2
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_6

    move v2, v4

    .line 621
    .local v2, fromY:I
    :goto_3
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-direct {v3, v5, v9, v6, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 622
    .local v3, ghostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 623
    invoke-virtual {v3, v8}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 624
    const-wide/16 v4, 0x352

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 625
    invoke-virtual {v3, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 626
    new-instance v4, Lcom/android/phone/SomcSlidingTab$1;

    invoke-direct {v4, p0}, Lcom/android/phone/SomcSlidingTab$1;-><init>(Lcom/android/phone/SomcSlidingTab;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 643
    iget-object v4, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 645
    .end local v0           #animMove:I
    .end local v1           #fromX:I
    .end local v2           #fromY:I
    .end local v3           #ghostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;
    :cond_1
    return-void

    .line 601
    .restart local v0       #animMove:I
    :cond_2
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 606
    :cond_3
    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 607
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_4

    .line 608
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 614
    :goto_4
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    invoke-direct {p0, v5, v6}, Lcom/android/phone/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 615
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    sub-int v0, v5, v6

    goto :goto_1

    .line 611
    :cond_4
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_5
    move v1, v4

    .line 619
    goto :goto_2

    .restart local v1       #fromX:I
    :cond_6
    move v2, v0

    .line 620
    goto :goto_3
.end method

.method private animateGhostMore(II)V
    .locals 10
    .parameter "amount"
    .parameter "sliderState"

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 648
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mAbortGhostAnimation:Z

    if-eqz v5, :cond_0

    .line 649
    invoke-virtual {p0, v8}, Lcom/android/phone/SomcSlidingTab;->resetSlider(Z)V

    .line 699
    :goto_0
    return-void

    .line 653
    :cond_0
    const/4 v0, 0x0

    .line 654
    .local v0, animMove:I
    iput-boolean v8, p0, Lcom/android/phone/SomcSlidingTab;->mIsGhostAnimating:Z

    .line 656
    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-ne v5, v8, :cond_3

    .line 657
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_2

    .line 658
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 662
    :goto_1
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    invoke-direct {p0, v5, v6}, Lcom/android/phone/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 663
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    sub-int v0, v5, v6

    .line 673
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 675
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_5

    move v1, v0

    .line 676
    .local v1, fromX:I
    :goto_3
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_6

    move v2, v4

    .line 677
    .local v2, fromY:I
    :goto_4
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-direct {v3, v4, v9, v5, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 678
    .local v3, ghostMoveAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x352

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 679
    new-instance v4, Lcom/android/phone/SomcSlidingTab$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/phone/SomcSlidingTab$2;-><init>(Lcom/android/phone/SomcSlidingTab;II)V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 697
    iput-boolean v8, p0, Lcom/android/phone/SomcSlidingTab;->mIsGhostAnimating:Z

    .line 698
    iget-object v4, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 660
    .end local v1           #fromX:I
    .end local v2           #fromY:I
    .end local v3           #ghostMoveAnimation:Landroid/view/animation/TranslateAnimation;
    :cond_2
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 664
    :cond_3
    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 665
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_4

    .line 666
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 670
    :goto_5
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    invoke-direct {p0, v5, v6}, Lcom/android/phone/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 671
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    sub-int v0, v5, v6

    goto :goto_2

    .line 668
    :cond_4
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_5
    move v1, v4

    .line 675
    goto :goto_3

    .restart local v1       #fromX:I
    :cond_6
    move v2, v0

    .line 676
    goto :goto_4
.end method

.method private disableButtonPress()V
    .locals 2

    .prologue
    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/SomcSlidingTab;->mPressTimestamp:J

    .line 454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SomcSlidingTab;->mAbortGhostAnimation:Z

    .line 455
    iget-byte v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    invoke-direct {p0, v0}, Lcom/android/phone/SomcSlidingTab;->dispatchGrabbedStateChangeEvent(I)V

    .line 456
    invoke-direct {p0}, Lcom/android/phone/SomcSlidingTab;->updateExpandable()V

    .line 457
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcSlidingTab;->vibrate(J)V

    .line 458
    return-void
.end method

.method private dispatchGrabbedStateChangeEvent(I)V
    .locals 3
    .parameter "whichHandle"

    .prologue
    const/4 v0, 0x1

    .line 890
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 892
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mOnTriggerListener:Lcom/android/phone/SomcSlidingTab$OnTriggerListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 904
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 906
    :goto_0
    return-void

    .line 894
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 895
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mOnTriggerListener:Lcom/android/phone/SomcSlidingTab$OnTriggerListener;

    invoke-interface {v1, p0, p1}, Lcom/android/phone/SomcSlidingTab$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 904
    :goto_1
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 898
    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    .line 901
    .local v0, handle:I
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mOnTriggerListener:Lcom/android/phone/SomcSlidingTab$OnTriggerListener;

    invoke-interface {v1, p0, v0}, Lcom/android/phone/SomcSlidingTab$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 904
    .end local v0           #handle:I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private dispatchTriggerEvent(I)V
    .locals 3
    .parameter "whichHandle"

    .prologue
    const/4 v0, 0x1

    .line 863
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 865
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mOnTriggerListener:Lcom/android/phone/SomcSlidingTab$OnTriggerListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 877
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 879
    :goto_0
    return-void

    .line 867
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 868
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mOnTriggerListener:Lcom/android/phone/SomcSlidingTab$OnTriggerListener;

    invoke-interface {v1, p0, p1}, Lcom/android/phone/SomcSlidingTab$OnTriggerListener;->onTrigger(Landroid/view/View;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 877
    :goto_1
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 871
    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    .line 874
    .local v0, handle:I
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mOnTriggerListener:Lcom/android/phone/SomcSlidingTab$OnTriggerListener;

    invoke-interface {v1, p0, v0}, Lcom/android/phone/SomcSlidingTab$OnTriggerListener;->onTrigger(Landroid/view/View;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 877
    .end local v0           #handle:I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V
    .locals 2
    .parameter "v"
    .parameter "icon"
    .parameter "visible"
    .parameter "id"

    .prologue
    const/4 v1, -0x2

    .line 253
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 255
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setId(I)V

    .line 259
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcSlidingTab;->addView(Landroid/view/View;)V

    .line 260
    return-void

    .line 256
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private measureDimension(II)I
    .locals 4
    .parameter "measureSpec"
    .parameter "wantedSize"

    .prologue
    .line 317
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 318
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 319
    .local v2, specSize:I
    move v0, p2

    .line 321
    .local v0, size:I
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_1

    .line 322
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 327
    :cond_0
    :goto_0
    return v0

    .line 323
    :cond_1
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_0

    .line 324
    move v0, v2

    goto :goto_0
.end method

.method private moveAnimation(Landroid/view/View;I)V
    .locals 10
    .parameter "v"
    .parameter "toPos"

    .prologue
    const/16 v9, 0x1e

    const/16 v8, -0x1e

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 702
    iget-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v3, :cond_0

    iget-byte v3, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-eq v3, v6, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-nez v3, :cond_4

    iget-byte v3, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 704
    :cond_1
    iget-object v3, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 709
    :goto_0
    const/4 v1, 0x0

    .line 710
    .local v1, animToX:I
    const/4 v2, 0x0

    .line 711
    .local v2, animToY:I
    iget-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v3, :cond_5

    .line 712
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v1, v3, p2

    .line 717
    :goto_1
    if-gt v1, v9, :cond_2

    if-lt v1, v8, :cond_2

    if-gt v2, v9, :cond_2

    if-ge v2, v8, :cond_7

    .line 718
    :cond_2
    iput-boolean v6, p0, Lcom/android/phone/SomcSlidingTab;->mIsAnimating:Z

    .line 719
    iget-object v4, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    iget-byte v3, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-ne v3, v6, :cond_6

    iget v3, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    :goto_2
    invoke-direct {p0, v4, v3}, Lcom/android/phone/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 722
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {v0, v3, v7, v4, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 723
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 724
    new-instance v3, Lcom/android/phone/SomcSlidingTab$3;

    invoke-direct {v3, p0}, Lcom/android/phone/SomcSlidingTab$3;-><init>(Lcom/android/phone/SomcSlidingTab;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 735
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 743
    .end local v0           #anim:Landroid/view/animation/TranslateAnimation;
    :cond_3
    :goto_3
    return-void

    .line 706
    .end local v1           #animToX:I
    .end local v2           #animToY:I
    :cond_4
    iget-object v3, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 714
    .restart local v1       #animToX:I
    .restart local v2       #animToY:I
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v2, v3, p2

    goto :goto_1

    .line 719
    :cond_6
    iget v3, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    goto :goto_2

    .line 737
    :cond_7
    iget-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickerDone:Z

    if-eqz v3, :cond_8

    .line 738
    invoke-virtual {p0, v6}, Lcom/android/phone/SomcSlidingTab;->resetSlider(Z)V

    goto :goto_3

    .line 739
    :cond_8
    iget-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mLongpressGhostStarted:Z

    if-eqz v3, :cond_3

    .line 740
    iput-boolean v6, p0, Lcom/android/phone/SomcSlidingTab;->mAbortGhostAnimation:Z

    goto :goto_3
.end method

.method private moveControl(I)V
    .locals 3
    .parameter "newPos"

    .prologue
    .line 486
    iget-boolean v1, p0, Lcom/android/phone/SomcSlidingTab;->mIsGhostAnimating:Z

    if-eqz v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 488
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 489
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/SomcSlidingTab;->mAbortGhostAnimation:Z

    .line 490
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/SomcSlidingTab;->mIsGhostAnimating:Z

    .line 493
    :cond_0
    iget v1, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 494
    iget v1, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 496
    iget-boolean v1, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 497
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 498
    .local v0, moveBy:I
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 503
    :goto_0
    return-void

    .line 500
    .end local v0           #moveBy:I
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 501
    .restart local v0       #moveBy:I
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    goto :goto_0
.end method

.method private setBackgroundLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 285
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/phone/SomcSlidingTab;->mSliderHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginBottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginBottom:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/phone/SomcSlidingTab;->mSliderWidth:I

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getHeight()I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0
.end method

.method private setLayout(Landroid/widget/ImageView;I)V
    .locals 8
    .parameter "v"
    .parameter "offset"

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getWidth()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 274
    .local v1, tw:I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .line 275
    .local v2, w:I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 276
    .local v0, h:I
    iget-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v3, :cond_0

    .line 277
    sub-int v3, p2, v2

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderHeight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginBottom:I

    sub-int/2addr v4, v5

    add-int v5, p2, v2

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    sub-int v3, v1, v2

    sub-int v4, p2, v0

    add-int v5, v1, v2

    add-int v6, p2, v0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0
.end method

.method private sliderButtonReleaseAfter(I)V
    .locals 3
    .parameter "pos"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 477
    iget-byte v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-ne v0, v1, :cond_1

    .line 478
    invoke-direct {p0, v1}, Lcom/android/phone/SomcSlidingTab;->dispatchTriggerEvent(I)V

    .line 482
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcSlidingTab;->resetSlider(Z)V

    .line 483
    return-void

    .line 479
    :cond_1
    iget-byte v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-ne v0, v2, :cond_0

    .line 480
    invoke-direct {p0, v2}, Lcom/android/phone/SomcSlidingTab;->dispatchTriggerEvent(I)V

    goto :goto_0
.end method

.method private sliderButtonReleaseBefore()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 462
    iget-byte v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    invoke-direct {p0, v0}, Lcom/android/phone/SomcSlidingTab;->dispatchGrabbedStateChangeEvent(I)V

    .line 464
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickerDone:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/SomcSlidingTab;->mPressTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 466
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mOnTriggerListener:Lcom/android/phone/SomcSlidingTab$OnTriggerListener;

    iget-byte v1, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    invoke-interface {v0, p0, v1}, Lcom/android/phone/SomcSlidingTab$OnTriggerListener;->onTap(Landroid/view/View;I)V

    .line 467
    const/4 v0, 0x2

    iget-byte v1, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcSlidingTab;->animateGhostMore(II)V

    .line 471
    :goto_0
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    iget-byte v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/phone/SomcSlidingTab;->moveAnimation(Landroid/view/View;I)V

    .line 473
    return-void

    .line 469
    :cond_0
    iput-boolean v4, p0, Lcom/android/phone/SomcSlidingTab;->mResetAfterGhost:Z

    goto :goto_0

    .line 471
    :cond_1
    iget v0, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    goto :goto_1
.end method

.method private sliderTouchEvent(IFFI)Z
    .locals 8
    .parameter "action"
    .parameter "xPos"
    .parameter "yPos"
    .parameter "pointerId"

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, invalidate:Z
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_2

    .end local p2
    :goto_0
    float-to-int v2, p2

    .line 363
    .local v2, touchVal:I
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_4

    .line 364
    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mSliderHeight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginBottom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, p3, v5

    if-lez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, p3

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginBottom:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    move v1, v3

    .line 370
    .local v1, isYPosTouchable:Z
    :goto_1
    if-eqz p1, :cond_0

    const/4 v5, 0x5

    if-ne p1, v5, :cond_b

    .line 371
    :cond_0
    if-nez v1, :cond_6

    .line 372
    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->invalidate()V

    .line 447
    :cond_1
    :goto_2
    return v3

    .end local v1           #isYPosTouchable:Z
    .end local v2           #touchVal:I
    .restart local p2
    :cond_2
    move p2, p3

    .line 361
    goto :goto_0

    .end local p2
    .restart local v2       #touchVal:I
    :cond_3
    move v1, v4

    .line 364
    goto :goto_1

    .line 367
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mSliderHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, p3, v5

    if-lez v5, :cond_5

    move v1, v3

    .restart local v1       #isYPosTouchable:Z
    :goto_3
    goto :goto_1

    .end local v1           #isYPosTouchable:Z
    :cond_5
    move v1, v4

    goto :goto_3

    .line 376
    .restart local v1       #isYPosTouchable:Z
    :cond_6
    iput v2, p0, Lcom/android/phone/SomcSlidingTab;->mFingerStartPos:I

    .line 378
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstTouchablePart:I

    if-ge v2, v5, :cond_9

    .line 379
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mIsGhostAnimating:Z

    if-eqz v5, :cond_7

    .line 380
    invoke-virtual {p0, v4}, Lcom/android/phone/SomcSlidingTab;->resetSlider(Z)V

    .line 383
    :cond_7
    iput-byte v3, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    .line 384
    invoke-direct {p0}, Lcom/android/phone/SomcSlidingTab;->disableButtonPress()V

    .line 385
    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mFingerStartPos:I

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/phone/SomcSlidingTab;->mFingerOff:I

    .line 386
    iput p4, p0, Lcom/android/phone/SomcSlidingTab;->mActivePointerId:I

    .line 443
    :cond_8
    :goto_4
    if-eqz v0, :cond_1

    .line 444
    iget-object v4, p0, Lcom/android/phone/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_2

    .line 387
    :cond_9
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSecondTouchablePart:I

    if-le v2, v5, :cond_8

    .line 388
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mIsGhostAnimating:Z

    if-eqz v5, :cond_a

    .line 389
    invoke-virtual {p0, v4}, Lcom/android/phone/SomcSlidingTab;->resetSlider(Z)V

    .line 392
    :cond_a
    iput-byte v7, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    .line 393
    invoke-direct {p0}, Lcom/android/phone/SomcSlidingTab;->disableButtonPress()V

    .line 394
    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mFingerStartPos:I

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/phone/SomcSlidingTab;->mFingerOff:I

    .line 395
    iput p4, p0, Lcom/android/phone/SomcSlidingTab;->mActivePointerId:I

    goto :goto_4

    .line 397
    :cond_b
    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-eqz v5, :cond_e

    if-eq p1, v3, :cond_c

    const/4 v5, 0x6

    if-ne p1, v5, :cond_e

    .line 400
    :cond_c
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/phone/SomcSlidingTab;->mActivePointerId:I

    .line 401
    iget-boolean v4, p0, Lcom/android/phone/SomcSlidingTab;->mPastActionPoint:Z

    if-eqz v4, :cond_d

    .line 402
    invoke-direct {p0, v2}, Lcom/android/phone/SomcSlidingTab;->sliderButtonReleaseAfter(I)V

    .line 406
    :goto_5
    const/4 v0, 0x1

    goto :goto_4

    .line 404
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/SomcSlidingTab;->sliderButtonReleaseBefore()V

    goto :goto_5

    .line 407
    :cond_e
    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-eqz v5, :cond_8

    if-ne p1, v7, :cond_8

    .line 408
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPastActionPoint:Z

    if-nez v5, :cond_15

    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-ne v5, v3, :cond_f

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSecondActivatePoint:I

    if-gt v2, v5, :cond_10

    :cond_f
    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-ne v5, v7, :cond_15

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstActivatePoint:I

    if-ge v2, v5, :cond_15

    .line 412
    :cond_10
    iput-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mPastActionPoint:Z

    .line 413
    const/4 v0, 0x1

    .line 422
    :cond_11
    :goto_6
    if-nez v0, :cond_13

    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mLastMovePos:I

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickeringThreshold:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_12

    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mLastMovePos:I

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickeringThreshold:I

    sub-int/2addr v4, v5

    if-gt v2, v4, :cond_1

    :cond_12
    if-eqz v1, :cond_1

    .line 428
    :cond_13
    iput v2, p0, Lcom/android/phone/SomcSlidingTab;->mLastMovePos:I

    .line 431
    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mFingerOff:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/phone/SomcSlidingTab;->mFingerOff:I

    .line 433
    iget-boolean v4, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickerDone:Z

    if-nez v4, :cond_14

    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mFingerStartPos:I

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickeringThreshold:I

    add-int/2addr v4, v5

    if-gt v2, v4, :cond_14

    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mFingerStartPos:I

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickeringThreshold:I

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_8

    .line 437
    :cond_14
    iput-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickerDone:Z

    .line 438
    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mFingerOff:I

    sub-int v4, v2, v4

    invoke-direct {p0, v4}, Lcom/android/phone/SomcSlidingTab;->moveControl(I)V

    .line 439
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 414
    :cond_15
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPastActionPoint:Z

    if-eqz v5, :cond_11

    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-ne v5, v3, :cond_16

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSecondActivatePoint:I

    add-int/lit8 v5, v5, -0xa

    if-lt v2, v5, :cond_17

    :cond_16
    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-ne v5, v7, :cond_11

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstActivatePoint:I

    add-int/lit8 v5, v5, 0xa

    if-le v2, v5, :cond_11

    .line 418
    :cond_17
    iput-boolean v4, p0, Lcom/android/phone/SomcSlidingTab;->mPastActionPoint:Z

    .line 419
    const/4 v0, 0x1

    goto :goto_6
.end method

.method private updateExpandable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 506
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 507
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 508
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    iget-byte v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 510
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/SomcSlidingTab;->mSlider2Id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 511
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 513
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 520
    :goto_0
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 534
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 536
    const-wide/16 v0, 0x258

    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcSlidingTab;->animateGhost(J)V

    .line 537
    return-void

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 521
    :cond_2
    iget-byte v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/SomcSlidingTab;->mSlider3Id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 523
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v0, :cond_3

    .line 526
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 532
    :goto_2
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 529
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private vibrate(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 746
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingTab;->mHapticsEnabled:Z

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mVibrator:Landroid/os/Vibrator;

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 753
    :cond_1
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 264
    if-nez p1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SomcSlidingTab;->setBackgroundLayout()V

    .line 268
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 269
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 296
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderWidth:I

    invoke-direct {p0, p1, v5}, Lcom/android/phone/SomcSlidingTab;->measureDimension(II)I

    move-result v4

    .line 297
    .local v4, width:I
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderHeight:I

    invoke-direct {p0, p2, v5}, Lcom/android/phone/SomcSlidingTab;->measureDimension(II)I

    move-result v1

    .line 299
    .local v1, height:I
    invoke-virtual {p0}, Lcom/android/phone/SomcSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v3, v5, Landroid/util/DisplayMetrics;->density:F

    .line 300
    .local v3, scale:F
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_0

    move v2, v4

    .line 301
    .local v2, length:I
    :goto_0
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 304
    .local v0, firstButtonLength:I
    :goto_1
    const/4 v5, 0x0

    mul-float/2addr v5, v3

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v6, v0, 0x2

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    .line 305
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    sub-int v5, v2, v5

    iput v5, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    .line 307
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstTouchablePart:I

    .line 308
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstTouchablePart:I

    sub-int v5, v2, v5

    iput v5, p0, Lcom/android/phone/SomcSlidingTab;->mSecondTouchablePart:I

    .line 310
    int-to-double v5, v2

    const-wide v7, 0x3fd3333333333333L

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstActivatePoint:I

    .line 311
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstActivatePoint:I

    sub-int v5, v2, v5

    iput v5, p0, Lcom/android/phone/SomcSlidingTab;->mSecondActivatePoint:I

    .line 313
    invoke-virtual {p0, v4, v1}, Lcom/android/phone/SomcSlidingTab;->setMeasuredDimension(II)V

    .line 314
    return-void

    .end local v0           #firstButtonLength:I
    .end local v2           #length:I
    :cond_0
    move v2, v1

    .line 300
    goto :goto_0

    .line 301
    .restart local v2       #length:I
    :cond_1
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v6, -0x1

    .line 332
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mIsAnimating:Z

    if-eqz v5, :cond_1

    .line 333
    const/4 v4, 0x1

    .line 356
    :cond_0
    :goto_0
    return v4

    .line 336
    :cond_1
    const/4 v4, 0x0

    .line 337
    .local v4, touchHandled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 338
    .local v0, action:I
    const v5, 0xff00

    and-int/2addr v5, v0

    shr-int/lit8 v1, v5, 0x8

    .line 340
    .local v1, currentIndex:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 342
    .local v2, currentPointerId:I
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mActivePointerId:I

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mActivePointerId:I

    if-ne v5, v2, :cond_3

    .line 343
    :cond_2
    and-int/lit16 v5, v0, 0xff

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-direct {p0, v5, v6, v7, v2}, Lcom/android/phone/SomcSlidingTab;->sliderTouchEvent(IFFI)Z

    move-result v4

    goto :goto_0

    .line 345
    :cond_3
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 346
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 348
    .local v3, pointerIndex:I
    if-eq v3, v6, :cond_4

    .line 349
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget v7, p0, Lcom/android/phone/SomcSlidingTab;->mActivePointerId:I

    invoke-direct {p0, v0, v5, v6, v7}, Lcom/android/phone/SomcSlidingTab;->sliderTouchEvent(IFFI)Z

    move-result v4

    goto :goto_0

    .line 352
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/phone/SomcSlidingTab;->resetSlider(Z)V

    goto :goto_0
.end method

.method public resetSlider(Z)V
    .locals 4
    .parameter "animateExpanded"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 540
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingTab;->mPastActionPoint:Z

    if-nez v0, :cond_0

    .line 541
    invoke-direct {p0, p1}, Lcom/android/phone/SomcSlidingTab;->animateExpandedToDisabled(Z)V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 544
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 546
    iput-boolean v2, p0, Lcom/android/phone/SomcSlidingTab;->mResetAfterGhost:Z

    .line 547
    iput-boolean v2, p0, Lcom/android/phone/SomcSlidingTab;->mIsAnimating:Z

    .line 548
    iput-boolean v2, p0, Lcom/android/phone/SomcSlidingTab;->mIsGhostAnimating:Z

    .line 549
    iput-boolean v2, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickerDone:Z

    .line 550
    iput-boolean v2, p0, Lcom/android/phone/SomcSlidingTab;->mPastActionPoint:Z

    .line 551
    iput-boolean v2, p0, Lcom/android/phone/SomcSlidingTab;->mLongpressGhostStarted:Z

    .line 552
    iput v3, p0, Lcom/android/phone/SomcSlidingTab;->mLastMovePos:I

    .line 553
    iput-byte v2, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    .line 554
    iput v3, p0, Lcom/android/phone/SomcSlidingTab;->mActivePointerId:I

    .line 555
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/phone/SomcSlidingTab$OnTriggerListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 836
    :try_start_0
    iput-object p1, p0, Lcom/android/phone/SomcSlidingTab;->mOnTriggerListener:Lcom/android/phone/SomcSlidingTab$OnTriggerListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 840
    return-void

    .line 838
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcSlidingTab;->resetSlider(Z)V

    .line 250
    return-void
.end method
