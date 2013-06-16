.class public Lcom/android/settings/SetBackupQuestion;
.super Landroid/app/Activity;
.source "SetBackupQuestion.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAnswerText:Landroid/widget/EditText;

.field private mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

.field private mButtonBar:Landroid/view/View;

.field private mFooterCancelButton:Landroid/widget/Button;

.field private mFooterConfirmButton:Landroid/widget/TextView;

.field private mKeyboardOpen:Z

.field private mQuestion:I

.field private mQuestionText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SetBackupQuestion;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    return-object v0
.end method

.method private queryKeyboardOpen()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 229
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private saveAnswerAndFinish()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion;->mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

    iget v1, p0, Lcom/android/settings/SetBackupQuestion;->mQuestion:I

    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/BackupQuestionUtils;->saveQuestionAnswerPair(ILjava/lang/String;)V

    .line 218
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SetBackupQuestion;->setResult(I)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->finish()V

    .line 220
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 235
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 240
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/android/settings/SetBackupQuestion;->saveAnswerAndFinish()V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion;->mFooterCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SetBackupQuestion;->setResult(I)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    new-instance v3, Lcom/android/internal/widget/BackupQuestionUtils;

    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/BackupQuestionUtils;-><init>(Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/android/settings/SetBackupQuestion;->mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

    .line 76
    const v3, 0x7f0b0032

    invoke-virtual {p0, v3}, Lcom/android/settings/SetBackupQuestion;->setTitle(I)V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/SetBackupQuestion;->queryKeyboardOpen()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/SetBackupQuestion;->mKeyboardOpen:Z

    .line 80
    if-nez p1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 82
    .local v1, launchIntent:Landroid/content/Intent;
    const-string v3, "question_id"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/SetBackupQuestion;->mQuestion:I

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->setupViews()V

    .line 84
    iget-object v3, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 98
    .end local v1           #launchIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v3, "questionId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/SetBackupQuestion;->mQuestion:I

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->setupViews()V

    .line 90
    const-string v3, "chosenAnswer"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, answer:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 92
    iget-object v3, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :goto_1
    iget-object v3, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v3, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 192
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SetBackupQuestion;->setResult(I)V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->finish()V

    .line 196
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 198
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 103
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 209
    const-string v0, "questionId"

    iget v1, p0, Lcom/android/settings/SetBackupQuestion;->mQuestion:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    const-string v0, "chosenAnswer"

    iget-object v1, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 245
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setupViews()V
    .locals 4

    .prologue
    .line 106
    const v2, 0x7f040067

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->setContentView(I)V

    .line 108
    const v2, 0x7f08012f

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mQuestionText:Landroid/widget/TextView;

    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, question:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    .local v0, context:Landroid/content/Context;
    iget v2, p0, Lcom/android/settings/SetBackupQuestion;->mQuestion:I

    packed-switch v2, :pswitch_data_0

    .line 136
    :goto_0
    if-eqz v1, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mQuestionText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_0
    const v2, 0x7f080133

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    .line 142
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v2, 0x7f080132

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mFooterCancelButton:Landroid/widget/Button;

    .line 146
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mFooterCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v2, 0x7f08012e

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mButtonBar:Landroid/view/View;

    .line 150
    const v2, 0x7f080130

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    .line 151
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/SetBackupQuestion$1;

    invoke-direct {v3, p0}, Lcom/android/settings/SetBackupQuestion$1;-><init>(Lcom/android/settings/SetBackupQuestion;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 169
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    iget-boolean v2, p0, Lcom/android/settings/SetBackupQuestion;->mKeyboardOpen:Z

    if-eqz v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 173
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 177
    :goto_1
    return-void

    .line 119
    :pswitch_0
    const v2, 0x10400f5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    goto :goto_0

    .line 123
    :pswitch_1
    const v2, 0x10400f6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 125
    goto :goto_0

    .line 127
    :pswitch_2
    const v2, 0x10400f7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    goto :goto_0

    .line 131
    :pswitch_3
    const v2, 0x10400f8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
