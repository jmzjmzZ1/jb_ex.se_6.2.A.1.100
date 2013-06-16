.class public Lcom/android/phone/SomcSnsTextView;
.super Landroid/widget/TextView;
.source "SomcSnsTextView.java"


# instance fields
.field private mFullText:Ljava/lang/String;

.field private mLineAdditionalVerticalPadding:F

.field private mLineSpacingMultiplier:F

.field private mMaxLines:I

.field private mProgrammaticChange:Z

.field private mReformatNeeded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/SomcSnsTextView;->mMaxLines:I

    .line 36
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/phone/SomcSnsTextView;->mLineSpacingMultiplier:F

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/SomcSnsTextView;->mLineAdditionalVerticalPadding:F

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/SomcSnsTextView;->mMaxLines:I

    .line 36
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/phone/SomcSnsTextView;->mLineSpacingMultiplier:F

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/SomcSnsTextView;->mLineAdditionalVerticalPadding:F

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/SomcSnsTextView;->mMaxLines:I

    .line 36
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/phone/SomcSnsTextView;->mLineSpacingMultiplier:F

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/SomcSnsTextView;->mLineAdditionalVerticalPadding:F

    .line 50
    return-void
.end method

.method private createWorkingLayout(Ljava/lang/String;)Landroid/text/Layout;
    .locals 8
    .parameter "workingText"

    .prologue
    .line 117
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lcom/android/phone/SomcSnsTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/SomcSnsTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/SomcSnsTextView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/android/phone/SomcSnsTextView;->getPaddingRight()I

    move-result v3

    sub-int v3, v1, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/android/phone/SomcSnsTextView;->mLineSpacingMultiplier:F

    iget v6, p0, Lcom/android/phone/SomcSnsTextView;->mLineAdditionalVerticalPadding:F

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private resetText()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 85
    sget-boolean v5, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "SomcSnsTextView"

    const-string v6, "resetText"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SomcSnsTextView;->getMaxLines()I

    move-result v3

    .line 87
    .local v3, lines:I
    iget-object v4, p0, Lcom/android/phone/SomcSnsTextView;->mFullText:Ljava/lang/String;

    .line 88
    .local v4, workingText:Ljava/lang/String;
    const/4 v0, 0x0

    .line 89
    .local v0, ellipsized:Z
    if-eq v3, v8, :cond_2

    .line 90
    invoke-direct {p0, v4}, Lcom/android/phone/SomcSnsTextView;->createWorkingLayout(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v2

    .line 91
    .local v2, layout:Landroid/text/Layout;
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    if-le v5, v3, :cond_2

    .line 92
    iget-object v5, p0, Lcom/android/phone/SomcSnsTextView;->mFullText:Ljava/lang/String;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 93
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/SomcSnsTextView;->createWorkingLayout(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    if-le v5, v3, :cond_1

    .line 94
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 95
    .local v1, lastSpace:I
    if-ne v1, v8, :cond_4

    .line 96
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "..."

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 101
    .end local v1           #lastSpace:I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    const/4 v0, 0x1

    .line 105
    .end local v2           #layout:Landroid/text/Layout;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/SomcSnsTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 106
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/phone/SomcSnsTextView;->mProgrammaticChange:Z

    .line 108
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/phone/SomcSnsTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iput-boolean v7, p0, Lcom/android/phone/SomcSnsTextView;->mProgrammaticChange:Z

    .line 113
    :cond_3
    iput-boolean v7, p0, Lcom/android/phone/SomcSnsTextView;->mReformatNeeded:Z

    .line 114
    return-void

    .line 99
    .restart local v1       #lastSpace:I
    .restart local v2       #layout:Landroid/text/Layout;
    :cond_4
    invoke-virtual {v4, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 100
    goto :goto_0

    .line 110
    .end local v1           #lastSpace:I
    .end local v2           #layout:Landroid/text/Layout;
    :catchall_0
    move-exception v5

    iput-boolean v7, p0, Lcom/android/phone/SomcSnsTextView;->mProgrammaticChange:Z

    throw v5
.end method


# virtual methods
.method public getMaxLines()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/phone/SomcSnsTextView;->mMaxLines:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 76
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SomcSnsTextView"

    const-string v1, "onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/SomcSnsTextView;->mReformatNeeded:Z

    if-eqz v0, :cond_1

    .line 78
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 79
    invoke-direct {p0}, Lcom/android/phone/SomcSnsTextView;->resetText()V

    .line 81
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 82
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SomcSnsTextView"

    const-string v1, "onTextChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 68
    iget-boolean v0, p0, Lcom/android/phone/SomcSnsTextView;->mProgrammaticChange:Z

    if-nez v0, :cond_1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcSnsTextView;->mFullText:Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SomcSnsTextView;->mReformatNeeded:Z

    .line 72
    :cond_1
    return-void
.end method

.method public setMaxLines(I)V
    .locals 2
    .parameter "lines"

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SomcSnsTextView"

    const-string v1, "setMaxLines"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 56
    iput p1, p0, Lcom/android/phone/SomcSnsTextView;->mMaxLines:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SomcSnsTextView;->mReformatNeeded:Z

    .line 58
    return-void
.end method
