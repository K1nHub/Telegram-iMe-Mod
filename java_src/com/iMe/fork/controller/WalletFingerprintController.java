package com.iMe.fork.controller;

import android.content.SharedPreferences;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.WalletFingerprintController;
import java.util.Objects;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.BaseController;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.concurrent.ConcurrentMap$EL;
import p034j$.util.function.Function;
/* compiled from: WalletFingerprintController.kt */
/* loaded from: classes3.dex */
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
        this.walletPinCodeEncrypted = string;
        this.isWalletFingerprintUnlockEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.walletFingerprintUnlockEnabled(), TelegramPreferenceKeys.User.Default.walletFingerprintUnlockEnabled());
    }

    public final void saveConfig() {
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        edit.putString(TelegramPreferenceKeys.User.walletPinCodeEncrypted(), this.walletPinCodeEncrypted);
        edit.putBoolean(TelegramPreferenceKeys.User.walletFingerprintUnlockEnabled(), this.isWalletFingerprintUnlockEnabled);
        edit.apply();
    }

    /* compiled from: WalletFingerprintController.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final WalletFingerprintController getInstance$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (WalletFingerprintController) tmp0.invoke(obj);
        }

        public final WalletFingerprintController getInstance(int i) {
            ConcurrentHashMap concurrentHashMap = WalletFingerprintController.accountInstances;
            Integer valueOf = Integer.valueOf(i);
            final WalletFingerprintController$Companion$getInstance$1 walletFingerprintController$Companion$getInstance$1 = new WalletFingerprintController$Companion$getInstance$1(i);
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, valueOf, new Function() { // from class: com.iMe.fork.controller.WalletFingerprintController$Companion$$ExternalSyntheticLambda0
                @Override // p034j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Objects.requireNonNull(function);
                }

                @Override // p034j$.util.function.Function
                public final Object apply(Object obj) {
                    WalletFingerprintController instance$lambda$0;
                    instance$lambda$0 = WalletFingerprintController.Companion.getInstance$lambda$0(Function1.this, obj);
                    return instance$lambda$0;
                }

                @Override // p034j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Objects.requireNonNull(function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountIndex: Int) = acc…ontroller(accountIndex) }");
            return (WalletFingerprintController) computeIfAbsent;
        }
    }
}
