package org.fork.controller;

import android.content.SharedPreferences;
import com.smedialink.common.TelegramPreferenceKeys;
import com.smedialink.model.contacts.ContactsFilter;
import java.util.Objects;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.fork.controller.ForkCommonController;
import org.fork.models.backup.Backup;
import org.telegram.messenger.BaseController;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.concurrent.ConcurrentMap$EL;
import p034j$.util.function.Function;
/* compiled from: ForkCommonController.kt */
/* loaded from: classes4.dex */
public final class ForkCommonController extends BaseController {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, ForkCommonController> accountInstances = new ConcurrentHashMap<>(5);
    private String appVersionRequiredUpdate;
    private boolean isAccountMuted;
    private boolean isPremiumAnimateAvatars;
    private boolean isPremiumAnimateStickers;
    private boolean isQuickReactionEnabled;
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

    public final void loadConfig(SharedPreferences preferences) {
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        setWalletRefreshToken(preferences.getString(TelegramPreferenceKeys.User.walletRefreshToken(), TelegramPreferenceKeys.User.Default.walletRefreshToken()));
        setAppVersionRequiredUpdate(preferences.getString(TelegramPreferenceKeys.User.appVersionRequiredUpdate(), TelegramPreferenceKeys.User.Default.appVersionRequiredUpdate()));
        setSortingDeployVersion(preferences.getInt(TelegramPreferenceKeys.User.sortingDeployVersion(), TelegramPreferenceKeys.User.Default.sortingDeployVersion()));
        setLastFilterTab(preferences.getInt(TelegramPreferenceKeys.User.lastFilterTab(), TelegramPreferenceKeys.User.Default.lastFilterTab()));
        setAccountMuted(preferences.getBoolean(TelegramPreferenceKeys.User.isAccountMuted(), TelegramPreferenceKeys.User.Default.isAccountMuted()));
        setQuickReactionEnabled(preferences.getBoolean(TelegramPreferenceKeys.User.isQuickReactionEnabled(), TelegramPreferenceKeys.User.Default.isQuickReactionEnabled()));
        setPremiumAnimateStickers(preferences.getBoolean(TelegramPreferenceKeys.User.isPremiumAnimateStickers(), TelegramPreferenceKeys.User.Default.isPremiumAnimateStickers()));
        setShowPremiumBadgeEnabled(preferences.getBoolean(TelegramPreferenceKeys.User.isShowPremiumBadgeEnabled(), TelegramPreferenceKeys.User.Default.isShowPremiumBadgeEnabled()));
        setShowPremiumStatusEnabled(preferences.getBoolean(TelegramPreferenceKeys.User.isShowPremiumStatusEnabled(), TelegramPreferenceKeys.User.Default.isShowPremiumStatusEnabled()));
        setPremiumAnimateAvatars(preferences.getBoolean(TelegramPreferenceKeys.User.isPremiumAnimateAvatars(), TelegramPreferenceKeys.User.Default.isPremiumAnimateAvatars()));
        setSelectedContactsFilter(ContactsFilter.Companion.mapNameToEnum(preferences.getString(TelegramPreferenceKeys.User.selectedContactsFilter(), TelegramPreferenceKeys.User.Default.selectedContactsFilter().name())));
    }

    public final void saveConfig() {
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        edit.putString(TelegramPreferenceKeys.User.walletRefreshToken(), getWalletRefreshToken());
        edit.putString(TelegramPreferenceKeys.User.appVersionRequiredUpdate(), getAppVersionRequiredUpdate());
        edit.putInt(TelegramPreferenceKeys.User.sortingDeployVersion(), getSortingDeployVersion());
        edit.putInt(TelegramPreferenceKeys.User.lastFilterTab(), getLastFilterTab());
        edit.putBoolean(TelegramPreferenceKeys.User.isAccountMuted(), isAccountMuted());
        edit.putBoolean(TelegramPreferenceKeys.User.isQuickReactionEnabled(), isQuickReactionEnabled());
        edit.putBoolean(TelegramPreferenceKeys.User.isPremiumAnimateStickers(), isPremiumAnimateStickers());
        edit.putBoolean(TelegramPreferenceKeys.User.isShowPremiumBadgeEnabled(), isShowPremiumBadgeEnabled());
        edit.putBoolean(TelegramPreferenceKeys.User.isShowPremiumStatusEnabled(), isShowPremiumStatusEnabled());
        edit.putBoolean(TelegramPreferenceKeys.User.isPremiumAnimateAvatars(), isPremiumAnimateAvatars());
        edit.putString(TelegramPreferenceKeys.User.selectedContactsFilter(), getSelectedContactsFilter().name());
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
        saveConfig();
    }

    /* compiled from: ForkCommonController.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: getInstance$lambda-0  reason: not valid java name */
        public static final ForkCommonController m1908getInstance$lambda0(int i, Integer it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new ForkCommonController(i);
        }

        public final ForkCommonController getInstance(final int i) {
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(ForkCommonController.accountInstances, Integer.valueOf(i), new Function() { // from class: org.fork.controller.ForkCommonController$Companion$$ExternalSyntheticLambda0
                @Override // p034j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Objects.requireNonNull(function);
                }

                @Override // p034j$.util.function.Function
                public final Object apply(Object obj) {
                    ForkCommonController m1908getInstance$lambda0;
                    m1908getInstance$lambda0 = ForkCommonController.Companion.m1908getInstance$lambda0(i, (Integer) obj);
                    return m1908getInstance$lambda0;
                }

                @Override // p034j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Objects.requireNonNull(function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountInstances.compute…ontroller(accountIndex) }");
            return (ForkCommonController) computeIfAbsent;
        }
    }
}
