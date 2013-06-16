.class public Lcom/android/phone/EditFdnContactScreen;
.super Landroid/app/Activity;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EditFdnContactScreen$QueryHandler;
    }
.end annotation


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAddContact:Z

.field private mButton:Landroid/widget/Button;

.field private final mClicked:Landroid/view/View$OnClickListener;

.field private mDataBusy:Z

.field private mFDNHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mName:Ljava/lang/String;

.field private mNameField:Landroid/widget/EditText;

.field private mNumber:Ljava/lang/String;

.field private mNumberField:Landroid/widget/EditText;

.field private final mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin2:Ljava/lang/String;

.field private mPinFieldContainer:Landroid/widget/LinearLayout;

.field private mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/EditFdnContactScreen;->NUM_PROJECTION:[Ljava/lang/String;

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/EditFdnContactScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    .line 110
    sget-object v0, Lcom/android/phone/EditFdnContactScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mHandler:Landroid/os/Handler;

    .line 436
    new-instance v0, Lcom/android/phone/EditFdnContactScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/EditFdnContactScreen$3;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    .line 453
    new-instance v0, Lcom/android/phone/EditFdnContactScreen$4;

    invoke-direct {v0, p0}, Lcom/android/phone/EditFdnContactScreen$4;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    .line 536
    new-instance v0, Lcom/android/phone/EditFdnContactScreen$7;

    invoke-direct {v0, p0}, Lcom/android/phone/EditFdnContactScreen$7;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mFDNHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EditFdnContactScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->setButtonEnabled()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/EditFdnContactScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->addContact()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/EditFdnContactScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->updateContact()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/EditFdnContactScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/EditFdnContactScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->authenticatePin2()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/EditFdnContactScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/EditFdnContactScreen;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EditFdnContactScreen;->handleResult(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/EditFdnContactScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/EditFdnContactScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    return v0
.end method

.method private addContact()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 320
    sget-boolean v3, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "addContact"

    invoke-direct {p0, v3}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->convertAndStrip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, number:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->isValidNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 325
    invoke-direct {p0, v5, v6}, Lcom/android/phone/EditFdnContactScreen;->handleResult(ZZ)V

    .line 341
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentURI()Landroid/net/Uri;

    move-result-object v2

    .line 331
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 332
    .local v0, bundle:Landroid/content/ContentValues;
    const-string v3, "tag"

    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v3, "number"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v3, "pin2"

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    .line 338
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4, v2, v0}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 339
    invoke-direct {p0, v6}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    .line 340
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b029d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private authenticatePin2()V
    .locals 2

    .prologue
    .line 384
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 385
    const-class v1, Lcom/android/phone/GetPin2Screen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 386
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/EditFdnContactScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 387
    return-void
.end method

.method private deleteSelected()V
    .locals 3

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 375
    const-class v1, Lcom/android/phone/DeleteFdnContactScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 376
    const-string v1, "name"

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->startActivity(Landroid/content/Intent;)V

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->finish()V

    .line 381
    return-void
.end method

.method private displayProgress(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    .line 392
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 397
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 398
    return-void

    .line 392
    :cond_0
    const/4 v0, -0x2

    goto :goto_0

    .line 397
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getContentURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 305
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getNameFromTextField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNumberFromTextField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleResult(ZZ)V
    .locals 4
    .parameter "success"
    .parameter "invalidNumber"

    .prologue
    .line 412
    if-eqz p1, :cond_2

    .line 413
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "handleResult: success!"

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0b029e

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 427
    :goto_1
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EditFdnContactScreen$2;

    invoke-direct {v1, p0}, Lcom/android/phone/EditFdnContactScreen$2;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 434
    return-void

    .line 414
    :cond_1
    const v0, 0x7f0b02a1

    goto :goto_0

    .line 417
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_3

    const-string v0, "handleResult: failed!"

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 418
    :cond_3
    if-eqz p2, :cond_4

    .line 419
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 423
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private isValidNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 315
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 502
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EditFdnContact] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void
.end method

.method private processPin2(Ljava/lang/String;)V
    .locals 3
    .parameter "pin"

    .prologue
    .line 507
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mFDNHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 509
    .local v0, onComplete:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/IccCard;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 510
    return-void
.end method

.method private resolveIntent()V
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 245
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    .line 246
    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    .line 249
    return-void

    .line 248
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setButtonEnabled()V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 496
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 499
    :cond_0
    return-void

    .line 496
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupView()V
    .locals 3

    .prologue
    .line 258
    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    .line 259
    const v1, 0x7f070028

    invoke-virtual {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    .line 261
    iget-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-nez v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :cond_1
    const v1, 0x7f070021

    invoke-virtual {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;

    .line 271
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->setButtonEnabled()V

    .line 276
    :cond_2
    const v1, 0x7f070026

    invoke-virtual {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    .line 278
    new-instance v0, Lcom/android/phone/EditFdnContactScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EditFdnContactScreen$1;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    .line 286
    .local v0, textWatcher:Landroid/text/TextWatcher;
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    .line 287
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 290
    :cond_3
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    .line 291
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 294
    :cond_4
    return-void
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "statusMsg"

    .prologue
    .line 405
    if-eqz p1, :cond_0

    .line 406
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 409
    :cond_0
    return-void
.end method

.method private updateContact()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 344
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "updateContact"

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 346
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v7

    .line 347
    .local v7, name:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->convertAndStrip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 349
    .local v8, number:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->isValidNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    invoke-direct {p0, v1, v9}, Lcom/android/phone/EditFdnContactScreen;->handleResult(ZZ)V

    .line 366
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentURI()Landroid/net/Uri;

    move-result-object v3

    .line 355
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 356
    .local v4, bundle:Landroid/content/ContentValues;
    const-string v0, "tag"

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v0, "number"

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v0, "newTag"

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v0, "newNumber"

    invoke-virtual {v4, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v0, "pin2"

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    new-instance v0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    .line 363
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 364
    invoke-direct {p0, v9}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    .line 365
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 140
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 142
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 196
    :cond_1
    :goto_0
    return-void

    .line 144
    :sswitch_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 145
    .local v7, extras:Landroid/os/Bundle;
    :goto_1
    if-eqz v7, :cond_4

    .line 148
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    const-string v0, "pin2"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->processPin2(Ljava/lang/String;)V

    goto :goto_0

    .end local v7           #extras:Landroid/os/Bundle;
    :cond_2
    move-object v7, v3

    .line 144
    goto :goto_1

    .line 152
    .restart local v7       #extras:Landroid/os/Bundle;
    :cond_3
    const v0, 0x7f0b0288

    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 154
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->finish()V

    goto :goto_0

    .line 157
    :cond_4
    if-eq p2, v2, :cond_1

    .line 159
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_5

    const-string v0, "onActivityResult: cancelled."

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 160
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->finish()V

    goto :goto_0

    .line 167
    .end local v7           #extras:Landroid/os/Bundle;
    :sswitch_1
    if-eq p2, v2, :cond_6

    .line 168
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onActivityResult: cancelled."

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/EditFdnContactScreen;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 173
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 174
    .local v8, nameFieldString:Ljava/lang/String;
    const/4 v9, 0x0

    .line 176
    .local v9, numberFieldString:Ljava/lang/String;
    if-eqz v6, :cond_7

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_8

    .line 177
    :cond_7
    const-string v0, "PhoneApp"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    if-eqz v6, :cond_1

    .line 187
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 180
    :cond_8
    :try_start_1
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 182
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 186
    if-eqz v6, :cond_9

    .line 187
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_9
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 186
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_a

    .line 187
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    .line 142
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->resolveIntent()V

    .line 121
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 122
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->setContentView(I)V

    .line 123
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->setupView()V

    .line 124
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0b029c

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->setTitle(I)V

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    .line 128
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 129
    return-void

    .line 124
    :cond_0
    const v0, 0x7f0b029f

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 514
    if-nez p1, :cond_0

    .line 515
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b02c8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/EditFdnContactScreen$5;

    invoke-direct {v2, p0}, Lcom/android/phone/EditFdnContactScreen$5;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 523
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 524
    const/4 v1, -0x3

    const v2, 0x7f0b018f

    invoke-virtual {p0, v2}, Lcom/android/phone/EditFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/phone/EditFdnContactScreen$6;

    invoke-direct {v3, p0}, Lcom/android/phone/EditFdnContactScreen$6;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 533
    .end local v0           #alert:Landroid/app/AlertDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-super {p0, p1, v1}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 205
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 208
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0b0318

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200ac

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 210
    const/4 v1, 0x2

    const v2, 0x7f0b0296

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 212
    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 229
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 239
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 231
    :pswitch_0
    sget-object v1, Lcom/android/phone/EditFdnContactScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const/16 v2, 0xc8

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/EditFdnContactScreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 235
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->deleteSelected()V

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 221
    .local v0, result:Z
    iget-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0           #result:Z
    :cond_0
    return v0
.end method
