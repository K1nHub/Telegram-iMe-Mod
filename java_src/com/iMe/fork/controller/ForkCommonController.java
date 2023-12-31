package com.iMe.fork.controller;

import android.content.SharedPreferences;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.ForkCommonController;
import com.iMe.fork.models.backup.Backup;
import com.iMe.model.contacts.ContactsFilter;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.BaseController;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.concurrent.ConcurrentMap$EL;
import p033j$.util.function.Function;
/* compiled from: ForkCommonController.kt */
/* loaded from: classes3.dex */
public final class ForkCommonController extends BaseController {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, ForkCommonController> accountInstances = new ConcurrentHashMap<>(5);
    private String appVersionRequiredUpdate;
    private boolean isAccountMuted;
    private boolean isPremiumAnimateAvatars;
    private boolean isPremiumAnimateStickers;
    private boolean isQuickReactionEnabled;
    private boolean isRevokeByDefault;
    private boolean isShowPremiumBadgeEnabled;
    private boolean isShowPremiumStatusEnabled;
    private int lastFilterTab;
    private ContactsFilter selectedContactsFilter;
    private int sortingDeployVersion;
    private String walletRefreshToken;

    public static final ForkCommonController getInstance(int i) {
        return Companion.getInstance(i);
    }

    public ForkCommonController(int i) {
        super(i);
        this.walletRefreshToken = TelegramPreferenceKeys.User.Default.walletRefreshToken();
        this.appVersionRequiredUpdate = TelegramPreferenceKeys.User.Default.appVersionRequiredUpdate();
        this.sortingDeployVersion = TelegramPreferenceKeys.User.Default.sortingDeployVersion();
        this.lastFilterTab = TelegramPreferenceKeys.User.Default.lastFilterTab();
        this.isAccountMuted = TelegramPreferenceKeys.User.Default.isAccountMuted();
        this.isQuickReactionEnabled = TelegramPreferenceKeys.User.Default.isQuickReactionEnabled();
        this.isPremiumAnimateStickers = TelegramPreferenceKeys.User.Default.isPremiumAnimateStickers();
        this.isShowPremiumBadgeEnabled = TelegramPreferenceKeys.User.Default.isShowPremiumBadgeEnabled();
        this.isShowPremiumStatusEnabled = TelegramPreferenceKeys.User.Default.isShowPremiumStatusEnabled();
        this.isPremiumAnimateAvatars = TelegramPreferenceKeys.User.Default.isPremiumAnimateAvatars();
        this.selectedContactsFilter = TelegramPreferenceKeys.User.Default.selectedContactsFilter();
        this.isRevokeByDefault = TelegramPreferenceKeys.User.Default.isRevokeByDefault();
    }

    public final String getWalletRefreshToken() {
        return this.walletRefreshToken;
    }

    public final void setWalletRefreshToken(String str) {
        this.walletRefreshToken = str;
    }

    public final String getAppVersionRequiredUpdate() {
        return this.appVersionRequiredUpdate;
    }

    public final void setAppVersionRequiredUpdate(String str) {
        this.appVersionRequiredUpdate = str;
    }

    public final int getSortingDeployVersion() {
        return this.sortingDeployVersion;
    }

    public final void setSortingDeployVersion(int i) {
        this.sortingDeployVersion = i;
    }

    public final int getLastFilterTab() {
        return this.lastFilterTab;
    }

    public final void setLastFilterTab(int i) {
        this.lastFilterTab = i;
    }

    public final boolean isAccountMuted() {
        return this.isAccountMuted;
    }

    public final void setAccountMuted(boolean z) {
        this.isAccountMuted = z;
    }

    public final boolean isQuickReactionEnabled() {
        return this.isQuickReactionEnabled;
    }

    public final void setQuickReactionEnabled(boolean z) {
        this.isQuickReactionEnabled = z;
    }

    public final boolean isPremiumAnimateStickers() {
        return this.isPremiumAnimateStickers;
    }

    public final void setPremiumAnimateStickers(boolean z) {
        this.isPremiumAnimateStickers = z;
    }

    public final boolean isShowPremiumBadgeEnabled() {
        return this.isShowPremiumBadgeEnabled;
    }

    public final void setShowPremiumBadgeEnabled(boolean z) {
        this.isShowPremiumBadgeEnabled = z;
    }

    public final boolean isShowPremiumStatusEnabled() {
        return this.isShowPremiumStatusEnabled;
    }

    public final void setShowPremiumStatusEnabled(boolean z) {
        this.isShowPremiumStatusEnabled = z;
    }

    public final boolean isPremiumAnimateAvatars() {
        return this.isPremiumAnimateAvatars;
    }

    public final void setPremiumAnimateAvatars(boolean z) {
        this.isPremiumAnimateAvatars = z;
    }

    public final ContactsFilter getSelectedContactsFilter() {
        return this.selectedContactsFilter;
    }

    public final void setSelectedContactsFilter(ContactsFilter contactsFilter) {
        Intrinsics.checkNotNullParameter(contactsFilter, "<set-?>");
        this.selectedContactsFilter = contactsFilter;
    }

    public final boolean isRevokeByDefault() {
        return this.isRevokeByDefault;
    }

    public final void setRevokeByDefault(boolean z) {
        this.isRevokeByDefault = z;
    }

    public final void loadConfig(SharedPreferences preferences) {
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        this.walletRefreshToken = preferences.getString(TelegramPreferenceKeys.User.walletRefreshToken(), TelegramPreferenceKeys.User.Default.walletRefreshToken());
        this.appVersionRequiredUpdate = preferences.getString(TelegramPreferenceKeys.User.appVersionRequiredUpdate(), TelegramPreferenceKeys.User.Default.appVersionRequiredUpdate());
        this.sortingDeployVersion = preferences.getInt(TelegramPreferenceKeys.User.sortingDeployVersion(), TelegramPreferenceKeys.User.Default.sortingDeployVersion());
        this.lastFilterTab = preferences.getInt(TelegramPreferenceKeys.User.lastFilterTab(), TelegramPreferenceKeys.User.Default.lastFilterTab());
        this.isAccountMuted = preferences.getBoolean(TelegramPreferenceKeys.User.isAccountMuted(), TelegramPreferenceKeys.User.Default.isAccountMuted());
        this.isQuickReactionEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isQuickReactionEnabled(), TelegramPreferenceKeys.User.Default.isQuickReactionEnabled());
        this.isPremiumAnimateStickers = preferences.getBoolean(TelegramPreferenceKeys.User.isPremiumAnimateStickers(), TelegramPreferenceKeys.User.Default.isPremiumAnimateStickers());
        this.isShowPremiumBadgeEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isShowPremiumBadgeEnabled(), TelegramPreferenceKeys.User.Default.isShowPremiumBadgeEnabled());
        this.isShowPremiumStatusEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isShowPremiumStatusEnabled(), TelegramPreferenceKeys.User.Default.isShowPremiumStatusEnabled());
        this.isPremiumAnimateAvatars = preferences.getBoolean(TelegramPreferenceKeys.User.isPremiumAnimateAvatars(), TelegramPreferenceKeys.User.Default.isPremiumAnimateAvatars());
        this.selectedContactsFilter = ContactsFilter.Companion.mapNameToEnum(preferences.getString(TelegramPreferenceKeys.User.selectedContactsFilter(), TelegramPreferenceKeys.User.Default.selectedContactsFilter().name()));
        this.isRevokeByDefault = preferences.getBoolean(TelegramPreferenceKeys.User.isRevokeByDefault(), TelegramPreferenceKeys.User.Default.isRevokeByDefault());
    }

    public final void saveConfig() {
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        edit.putString(TelegramPreferenceKeys.User.walletRefreshToken(), this.walletRefreshToken);
        edit.putString(TelegramPreferenceKeys.User.appVersionRequiredUpdate(), this.appVersionRequiredUpdate);
        edit.putInt(TelegramPreferenceKeys.User.sortingDeployVersion(), this.sortingDeployVersion);
        edit.putInt(TelegramPreferenceKeys.User.lastFilterTab(), this.lastFilterTab);
        edit.putBoolean(TelegramPreferenceKeys.User.isAccountMuted(), this.isAccountMuted);
        edit.putBoolean(TelegramPreferenceKeys.User.isQuickReactionEnabled(), this.isQuickReactionEnabled);
        edit.putBoolean(TelegramPreferenceKeys.User.isPremiumAnimateStickers(), this.isPremiumAnimateStickers);
        edit.putBoolean(TelegramPreferenceKeys.User.isShowPremiumBadgeEnabled(), this.isShowPremiumBadgeEnabled);
        edit.putBoolean(TelegramPreferenceKeys.User.isShowPremiumStatusEnabled(), this.isShowPremiumStatusEnabled);
        edit.putBoolean(TelegramPreferenceKeys.User.isPremiumAnimateAvatars(), this.isPremiumAnimateAvatars);
        edit.putString(TelegramPreferenceKeys.User.selectedContactsFilter(), this.selectedContactsFilter.name());
        edit.putBoolean(TelegramPreferenceKeys.User.isRevokeByDefault(), this.isRevokeByDefault);
        edit.apply();
    }

    public final void restoreBackup(Backup backup) {
        Intrinsics.checkNotNullParameter(backup, "backup");
        if (backup.isQuickReactionEnabled() != null) {
            this.isQuickReactionEnabled = backup.isQuickReactionEnabled().booleanValue();
        }
        if (backup.isPremiumAnimateStickers() != null) {
            this.isPremiumAnimateStickers = backup.isPremiumAnimateStickers().booleanValue();
        }
        if (backup.isPremiumShowBadge() != null) {
            this.isShowPremiumBadgeEnabled = backup.isPremiumShowBadge().booleanValue();
        }
        if (backup.isPremiumShowStatus() != null) {
            this.isShowPremiumStatusEnabled = backup.isPremiumShowStatus().booleanValue();
        }
        if (backup.isPremiumAnimateAvatars() != null) {
            this.isPremiumAnimateAvatars = backup.isPremiumAnimateAvatars().booleanValue();
        }
        if (backup.getSelectedContactsFilter() != null) {
            this.selectedContactsFilter = ContactsFilter.Companion.mapNameToEnum(backup.getSelectedContactsFilter());
        }
        if (backup.isRevokeByDefault() != null) {
            this.isRevokeByDefault = backup.isRevokeByDefault().booleanValue();
        }
        saveConfig();
    }

    /* compiled from: ForkCommonController.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final ForkCommonController getInstance$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (ForkCommonController) tmp0.invoke(obj);
        }

        public final ForkCommonController getInstance(final int i) {
            ConcurrentHashMap concurrentHashMap = ForkCommonController.accountInstances;
            Integer valueOf = Integer.valueOf(i);
            final Function1<Integer, ForkCommonController> function1 = new Function1<Integer, ForkCommonController>() { // from class: com.iMe.fork.controller.ForkCommonController$Companion$getInstance$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final ForkCommonController invoke(Integer it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new ForkCommonController(i);
                }
            };
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, valueOf, new Function() { // from class: com.iMe.fork.controller.ForkCommonController$Companion$$ExternalSyntheticLambda0
                @Override // p033j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Function.CC.$default$andThen(this, function);
                }

                @Override // p033j$.util.function.Function
                public final Object apply(Object obj) {
                    ForkCommonController instance$lambda$0;
                    instance$lambda$0 = ForkCommonController.Companion.getInstance$lambda$0(Function1.this, obj);
                    return instance$lambda$0;
                }

                @Override // p033j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Function.CC.$default$compose(this, function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountIndex: Int) =\n   …ontroller(accountIndex) }");
            return (ForkCommonController) computeIfAbsent;
        }
    }
}
