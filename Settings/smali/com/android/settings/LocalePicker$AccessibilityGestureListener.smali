.class Lcom/android/settings/LocalePicker$AccessibilityGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LocalePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityGestureListener"
.end annotation


# instance fields
.field private mMaxDeviation:F

.field private mMinLength:F

.field private mState:Lcom/android/settings/LocalePicker$GestureState;

.field private mX:F

.field private mY:F

.field final synthetic this$0:Lcom/android/settings/LocalePicker;


# direct methods
.method public constructor <init>(Lcom/android/settings/LocalePicker;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 233
    iput-object p1, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->this$0:Lcom/android/settings/LocalePicker;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 234
    iput v1, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mX:F

    .line 235
    iput v1, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mY:F

    .line 236
    sget-object v1, Lcom/android/settings/LocalePicker$GestureState;->UNSTARTED:Lcom/android/settings/LocalePicker$GestureState;

    iput-object v1, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mState:Lcom/android/settings/LocalePicker$GestureState;

    .line 239
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 240
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 241
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v2, 0x3ecccccd

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mMinLength:F

    .line 242
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v2, 0x3d4ccccd

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mMaxDeviation:F

    .line 243
    return-void
.end method

.method private changeState(Lcom/android/settings/LocalePicker$GestureState;Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "state"
    .parameter "e"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mState:Lcom/android/settings/LocalePicker$GestureState;

    .line 308
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mX:F

    .line 309
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mY:F

    .line 310
    return-void
.end method

.method private startAccessability()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 316
    iget-object v3, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->this$0:Lcom/android/settings/LocalePicker;

    invoke-virtual {v3}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 318
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v3, "enabled_accessibility_services"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, enabledAccessibility:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 321
    const-string v1, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    .line 326
    :cond_0
    :goto_0
    const-string v3, "touch_exploration_granted_accessibility_services"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, touchExplorationGranted:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 329
    const-string v2, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    .line 334
    :cond_1
    :goto_1
    const-string v3, "touch_exploration_granted_accessibility_services"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 337
    const-string v3, "touch_exploration_enabled"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 338
    const-string v3, "enabled_accessibility_services"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 340
    const-string v3, "accessibility_enabled"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 341
    return-void

    .line 322
    .end local v2           #touchExplorationGranted:Ljava/lang/String;
    :cond_2
    const-string v3, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 330
    .restart local v2       #touchExplorationGranted:Ljava/lang/String;
    :cond_3
    const-string v3, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 248
    sget-object v0, Lcom/android/settings/LocalePicker$GestureState;->UNSTARTED:Lcom/android/settings/LocalePicker$GestureState;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->changeState(Lcom/android/settings/LocalePicker$GestureState;Landroid/view/MotionEvent;)V

    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 257
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mX:F

    sub-float v0, v2, v3

    .line 258
    .local v0, xDistance:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mY:F

    sub-float v1, v2, v3

    .line 264
    .local v1, yDistance:F
    sget-object v2, Lcom/android/settings/LocalePicker$3;->$SwitchMap$com$android$settings$LocalePicker$GestureState:[I

    iget-object v3, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mState:Lcom/android/settings/LocalePicker$GestureState;

    invoke-virtual {v3}, Lcom/android/settings/LocalePicker$GestureState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 299
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 266
    :pswitch_0
    iget v2, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mMaxDeviation:F

    neg-float v2, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mMaxDeviation:F

    neg-float v2, v2

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mMaxDeviation:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 268
    :cond_1
    sget-object v2, Lcom/android/settings/LocalePicker$GestureState;->UNSTARTED:Lcom/android/settings/LocalePicker$GestureState;

    invoke-direct {p0, v2, p2}, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->changeState(Lcom/android/settings/LocalePicker$GestureState;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 269
    :cond_2
    iget v2, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mMinLength:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 270
    sget-object v2, Lcom/android/settings/LocalePicker$GestureState;->TOP_SIDE_DONE:Lcom/android/settings/LocalePicker$GestureState;

    invoke-direct {p0, v2, p2}, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->changeState(Lcom/android/settings/LocalePicker$GestureState;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 274
    :pswitch_1
    iget v2, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mMaxDeviation:F

    neg-float v2, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mMaxDeviation:F

    neg-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    .line 275
    :cond_3
    sget-object v2, Lcom/android/settings/LocalePicker$GestureState;->UNSTARTED:Lcom/android/settings/LocalePicker$GestureState;

    invoke-direct {p0, v2, p2}, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->changeState(Lcom/android/settings/LocalePicker$GestureState;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 276
    :cond_4
    iget v2, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mMinLength:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 277
    sget-object v2, Lcom/android/settings/LocalePicker$GestureState;->RIGHT_SIDE_DONE:Lcom/android/settings/LocalePicker$GestureState;

    invoke-direct {p0, v2, p2}, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->changeState(Lcom/android/settings/LocalePicker$GestureState;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 281
    :pswitch_2
    iget v2, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mMaxDeviation:F

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_5

    iget v2, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mMaxDeviation:F

    neg-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    .line 282
    :cond_5
    sget-object v2, Lcom/android/settings/LocalePicker$GestureState;->UNSTARTED:Lcom/android/settings/LocalePicker$GestureState;

    invoke-direct {p0, v2, p2}, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->changeState(Lcom/android/settings/LocalePicker$GestureState;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 283
    :cond_6
    iget v2, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mMinLength:F

    neg-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 284
    sget-object v2, Lcom/android/settings/LocalePicker$GestureState;->BOTTOM_SIDE_DONE:Lcom/android/settings/LocalePicker$GestureState;

    invoke-direct {p0, v2, p2}, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->changeState(Lcom/android/settings/LocalePicker$GestureState;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 288
    :pswitch_3
    iget v2, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mMaxDeviation:F

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_7

    iget v2, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mMaxDeviation:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_8

    .line 289
    :cond_7
    sget-object v2, Lcom/android/settings/LocalePicker$GestureState;->UNSTARTED:Lcom/android/settings/LocalePicker$GestureState;

    invoke-direct {p0, v2, p2}, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->changeState(Lcom/android/settings/LocalePicker$GestureState;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 290
    :cond_8
    iget v2, p0, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->mMinLength:F

    neg-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->startAccessability()V

    .line 292
    sget-object v2, Lcom/android/settings/LocalePicker$GestureState;->DONE:Lcom/android/settings/LocalePicker$GestureState;

    invoke-direct {p0, v2, p2}, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;->changeState(Lcom/android/settings/LocalePicker$GestureState;Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
