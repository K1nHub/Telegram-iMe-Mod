package org.fork.controller;

import android.content.SharedPreferences;
import com.smedialink.common.TelegramPreferenceKeys;
import java.util.Objects;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.fork.controller.WalletFingerprintController;
import org.telegram.messenger.BaseController;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.concurrent.ConcurrentMap$EL;
import p034j$.util.function.Function;
/* compiled from: WalletFingerprintController.kt */
/* loaded from: classes4.dex */
public final class WalletFingerprintController extends BaseController {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, WalletFingerprintController> accountInstances = new ConcurrentHashMap<>(5);
    private boolean isWalletFingerprintUnlockEnabled;
    private String walletPinCodeEncrypted;

    public static final WalletFingerprintController getInstance(int i) {
        return Companion.getInstance(i);
    }

    public WalletFingerprintController(int i) {
        super(i);
        this.walletPinCodeEncrypted = TelegramPreferenceKeys.User.Default.walletPinCodeEncrypted();
        this.isWalletFingerprintUnlockEnabled = TelegramPreferenceKeys.User.Default.walletFingerprintUnlockEnabled();
    }

    public final String getWalletPinCodeEncrypted() {
        return this.walletPinCodeEncrypted;
    }

    public final void setWalletPinCodeEncrypted(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.walletPinCodeEncrypted = str;
    }

    public final boolean isWalletFingerprintUnlockEnabled() {
        return this.isWalletFingerprintUnlockEnabled;
    }

    public final void setWalletFingerprintUnlockEnabled(boolean z) {
        this.isWalletFingerprintUnlockEnabled = z;
    }

    public final void loadConfig(SharedPreferences preferences) {
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        String string = preferences.getString(TelegramPreferenceKeys.User.walletPinCodeEncrypted(), TelegramPreferenceKeys.User.Default.walletPinCodeEncrypted());
        if (string == null) {
            string = TelegramPreferenceKeys.User.Default.walletPinCodeEncrypted();
        }
        setWalletPinCodeEncrypted(string);
        setWalletFingerprintUnlockEnabled(preferences.getBoolean(TelegramPreferenceKeys.User.walletFingerprintUnlockEnabled(), TelegramPreferenceKeys.User.Default.walletFingerprintUnlockEnabled()));
    }

    public final void saveConfig() {
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        edit.putString(TelegramPreferenceKeys.User.walletPinCodeEncrypted(), getWalletPinCodeEncrypted());
        edit.putBoolean(TelegramPreferenceKeys.User.walletFingerprintUnlockEnabled(), isWalletFingerprintUnlockEnabled());
        edit.apply();
    }

    /* compiled from: WalletFingerprintController.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: getInstance$lambda-0  reason: not valid java name */
        public static final WalletFingerprintController m1962getInstance$lambda0(int i, Integer it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new WalletFingerprintController(i);
        }

        public final WalletFingerprintController getInstance(final int i) {
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(WalletFingerprintController.accountInstances, Integer.valueOf(i), new Function() { // from class: org.fork.controller.WalletFingerprintController$Companion$$ExternalSyntheticLambda0
                @Override // p034j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Objects.requireNonNull(function);
                }

                @Override // p034j$.util.function.Function
                public final Object apply(Object obj) {
                    WalletFingerprintController m1962getInstance$lambda0;
                    m1962getInstance$lambda0 = WalletFingerprintController.Companion.m1962getInstance$lambda0(i, (Integer) obj);
                    return m1962getInstance$lambda0;
                }

                @Override // p034j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Objects.requireNonNull(function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountInstances.compute…ontroller(accountIndex) }");
            return (WalletFingerprintController) computeIfAbsent;
        }
    }
}
