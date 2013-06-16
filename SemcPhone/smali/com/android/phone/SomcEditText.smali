.class public Lcom/android/phone/SomcEditText;
.super Landroid/widget/EditText;
.source "SomcEditText.java"


# instance fields
.field private mAltLeftPressed:Z

.field private mPreviousUpTime:J

.field private mSomcDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

.field private mSomcEmergencyDialer:Lcom/android/phone/SomcEmergencyDialer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v0, p0, Lcom/android/phone/SomcEditText;->mSomcDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    .line 30
    iput-object v0, p0, Lcom/android/phone/SomcEditText;->mSomcEmergencyDialer:Lcom/android/phone/SomcEmergencyDialer;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SomcEditText;->mAltLeftPressed:Z

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/SomcEditText;->mPreviousUpTime:J

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object v0, p0, Lcom/android/phone/SomcEditText;->mSomcDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    .line 30
    iput-object v0, p0, Lcom/android/phone/SomcEditText;->mSomcEmergencyDialer:Lcom/android/phone/SomcEmergencyDialer;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SomcEditText;->mAltLeftPressed:Z

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/SomcEditText;->mPreviousUpTime:J

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object v0, p0, Lcom/android/phone/SomcEditText;->mSomcDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    .line 30
    iput-object v0, p0, Lcom/android/phone/SomcEditText;->mSomcEmergencyDialer:Lcom/android/phone/SomcEmergencyDialer;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SomcEditText;->mAltLeftPressed:Z

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/SomcEditText;->mPreviousUpTime:J

    .line 48
    return-void
.end method

.method private handleComma(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-boolean v0, p0, Lcom/android/phone/SomcEditText;->mAltLeftPressed:Z

    if-eqz v0, :cond_1

    .line 175
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcEditText;->addChar(C)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcEditText;->addChar(C)V

    goto :goto_0
.end method

.method private final handleDelete(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/phone/SomcEditText;->backspace()V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isKeyInsideKeyboard(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final processDtmf(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 203
    const/4 v1, 0x1

    .line 204
    .local v1, keyHandled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getNumber()C

    move-result v0

    .line 207
    .local v0, c:C
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 209
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 210
    invoke-virtual {p0, v0}, Lcom/android/phone/SomcEditText;->addChar(C)V

    .line 213
    iget-object v2, p0, Lcom/android/phone/SomcEditText;->mSomcDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    if-eqz v2, :cond_1

    .line 214
    iget-object v2, p0, Lcom/android/phone/SomcEditText;->mSomcDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v2, v0}, Lcom/android/phone/SomcDtmfDialPad;->startTone(C)V

    .line 223
    :cond_0
    :goto_0
    return v1

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/android/phone/SomcEditText;->mSomcEmergencyDialer:Lcom/android/phone/SomcEmergencyDialer;

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/android/phone/SomcEditText;->mSomcEmergencyDialer:Lcom/android/phone/SomcEmergencyDialer;

    invoke-virtual {v2, v0}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    goto :goto_0

    .line 218
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/SomcEditText;->isKeyInsideKeyboard(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addChar(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/phone/SomcEditText;->getSelectionStart()I

    move-result v0

    .line 229
    .local v0, pos:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/phone/SomcEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    .line 230
    .local v1, st:Ljava/lang/StringBuffer;
    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 231
    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEditText;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/phone/SomcEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 236
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/SomcEditText;->setSelection(I)V

    .line 238
    :cond_0
    return-void
.end method

.method public backspace()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/android/phone/SomcEditText;->getSelectionStart()I

    move-result v2

    .line 242
    .local v2, start:I
    invoke-virtual {p0}, Lcom/android/phone/SomcEditText;->getSelectionEnd()I

    move-result v0

    .line 244
    .local v0, end:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/phone/SomcEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    .line 246
    .local v1, st:Ljava/lang/StringBuffer;
    add-int/lit8 v3, v2, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 247
    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    add-int/lit8 v3, v2, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEditText;->setSelection(I)V

    .line 249
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 253
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 254
    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/android/phone/SomcEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcEditText;->setSelection(I)V

    .line 257
    :cond_0
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v3, 0x39

    const/4 v1, 0x0

    .line 75
    const/4 v0, 0x1

    .line 77
    .local v0, keyHandled:Z
    const/16 v2, 0x18

    if-eq p1, v2, :cond_0

    const/16 v2, 0x19

    if-ne p1, v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v1

    .line 82
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    move v1, v0

    .line 115
    goto :goto_0

    .line 85
    :pswitch_0
    const/16 v1, 0x43

    if-ne p1, v1, :cond_3

    .line 86
    invoke-direct {p0, p2}, Lcom/android/phone/SomcEditText;->handleDelete(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 87
    :cond_3
    const/16 v1, 0x37

    if-ne p1, v1, :cond_4

    .line 88
    invoke-direct {p0, p2}, Lcom/android/phone/SomcEditText;->handleComma(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 89
    :cond_4
    if-ne p1, v3, :cond_5

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/SomcEditText;->mAltLeftPressed:Z

    goto :goto_1

    .line 92
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/phone/SomcEditText;->processDtmf(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 94
    goto :goto_1

    .line 97
    :pswitch_1
    if-ne p1, v3, :cond_6

    .line 98
    iput-boolean v1, p0, Lcom/android/phone/SomcEditText;->mAltLeftPressed:Z

    goto :goto_1

    .line 99
    :cond_6
    const/16 v1, 0x17

    if-ne p1, v1, :cond_7

    .line 100
    const/4 v0, 0x1

    goto :goto_1

    .line 102
    :cond_7
    iget-object v1, p0, Lcom/android/phone/SomcEditText;->mSomcDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    if-eqz v1, :cond_8

    .line 103
    iget-object v1, p0, Lcom/android/phone/SomcEditText;->mSomcDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v1}, Lcom/android/phone/SomcDtmfDialPad;->stopTone()V

    .line 105
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/phone/SomcEditText;->isKeyInsideKeyboard(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 106
    const/4 v0, 0x0

    goto :goto_1

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 122
    .local v0, action:I
    const/4 v4, 0x1

    .line 124
    .local v4, ret:Z
    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 146
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->isInputMethodTarget()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/android/phone/SomcEditText;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 149
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/android/phone/SomcEditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 151
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return v4

    .line 126
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/phone/SomcEditText;->mPreviousUpTime:J

    sub-long v1, v5, v7

    .line 128
    .local v1, duration:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    .line 132
    .end local v1           #duration:J
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/phone/SomcEditText;->mPreviousUpTime:J

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSomcDtmfDialPad(Lcom/android/phone/SomcDtmfDialPad;)V
    .locals 0
    .parameter "dialPad"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/phone/SomcEditText;->mSomcDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    .line 57
    return-void
.end method

.method public setSomcEmergencyDialer(Lcom/android/phone/SomcEmergencyDialer;)V
    .locals 0
    .parameter "emergencyDialer"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/SomcEditText;->mSomcEmergencyDialer:Lcom/android/phone/SomcEmergencyDialer;

    .line 66
    return-void
.end method
