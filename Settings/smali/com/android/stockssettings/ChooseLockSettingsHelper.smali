.class public final Lcom/android/stockssettings/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragment:Landroid/app/Fragment;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/stockssettings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 37
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/stockssettings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/stockssettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 42
    iput-object p2, p0, Lcom/android/stockssettings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    .line 43
    return-void
.end method

.method private confirmPassword(ILjava/lang/CharSequence;Z)Z
    .locals 3
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "returnCredentials"    # Z

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/stockssettings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 140
    :goto_0
    return v1

    .line 128
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 131
    const-string v2, "com.android.settings"

    if-eqz p3, :cond_1

    const-class v1, Lcom/android/stockssettings/ConfirmLockPassword$InternalActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/android/stockssettings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/android/stockssettings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 140
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 131
    :cond_1
    const-class v1, Lcom/android/stockssettings/ConfirmLockPassword;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/android/stockssettings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method private confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 3
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "details"    # Ljava/lang/CharSequence;
    .param p4, "returnCredentials"    # Z

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/stockssettings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/stockssettings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    :cond_0
    const/4 v1, 0x0

    .line 115
    :goto_0
    return v1

    .line 102
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 105
    const-string v1, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 106
    const-string v2, "com.android.settings"

    if-eqz p4, :cond_2

    const-class v1, Lcom/android/stockssettings/ConfirmLockPattern$InternalActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/android/stockssettings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_3

    .line 111
    iget-object v1, p0, Lcom/android/stockssettings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 115
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 106
    :cond_2
    const-class v1, Lcom/android/stockssettings/ConfirmLockPattern;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/android/stockssettings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method


# virtual methods
.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "details"    # Ljava/lang/CharSequence;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/stockssettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 2
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "details"    # Ljava/lang/CharSequence;
    .param p4, "returnCredentials"    # Z

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "launched":Z
    iget-object v1, p0, Lcom/android/stockssettings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 86
    :goto_0
    return v0

    .line 75
    :sswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/stockssettings/ChooseLockSettingsHelper;->confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    .line 76
    goto :goto_0

    .line 83
    :sswitch_1
    invoke-direct {p0, p1, p2, p4}, Lcom/android/stockssettings/ChooseLockSettingsHelper;->confirmPassword(ILjava/lang/CharSequence;Z)Z

    move-result v0

    goto :goto_0

    .line 73
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method public utils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/stockssettings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method
