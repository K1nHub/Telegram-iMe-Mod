package com.iMe.model.wallet.pin;

import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.model.wallet.pin.CreatePinCodeScreenType;
import com.iMe.storage.domain.model.crypto.Wallet;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletPinScreenArgs.kt */
/* loaded from: classes3.dex */
public final class WalletPinScreenArgs {
    private final String password;
    private final CreatePinCodeScreenType screenType;
    private final String seed;

    /* renamed from: wallet  reason: collision with root package name */
    private final Wallet f1982wallet;

    public static /* synthetic */ WalletPinScreenArgs copy$default(WalletPinScreenArgs walletPinScreenArgs, String str, String str2, Wallet wallet2, CreatePinCodeScreenType createPinCodeScreenType, int i, Object obj) {
        if ((i & 1) != 0) {
            str = walletPinScreenArgs.password;
        }
        if ((i & 2) != 0) {
            str2 = walletPinScreenArgs.seed;
        }
        if ((i & 4) != 0) {
            wallet2 = walletPinScreenArgs.f1982wallet;
        }
        if ((i & 8) != 0) {
            createPinCodeScreenType = walletPinScreenArgs.screenType;
        }
        return walletPinScreenArgs.copy(str, str2, wallet2, createPinCodeScreenType);
    }

    public final String component1() {
        return this.password;
    }

    public final String component2() {
        return this.seed;
    }

    public final Wallet component3() {
        return this.f1982wallet;
    }

    public final CreatePinCodeScreenType component4() {
        return this.screenType;
    }

    public final WalletPinScreenArgs copy(String password, String seed, Wallet wallet2, CreatePinCodeScreenType screenType) {
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        return new WalletPinScreenArgs(password, seed, wallet2, screenType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WalletPinScreenArgs) {
            WalletPinScreenArgs walletPinScreenArgs = (WalletPinScreenArgs) obj;
            return Intrinsics.areEqual(this.password, walletPinScreenArgs.password) && Intrinsics.areEqual(this.seed, walletPinScreenArgs.seed) && Intrinsics.areEqual(this.f1982wallet, walletPinScreenArgs.f1982wallet) && Intrinsics.areEqual(this.screenType, walletPinScreenArgs.screenType);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.password.hashCode() * 31) + this.seed.hashCode()) * 31;
        Wallet wallet2 = this.f1982wallet;
        return ((hashCode + (wallet2 == null ? 0 : wallet2.hashCode())) * 31) + this.screenType.hashCode();
    }

    public String toString() {
        return "WalletPinScreenArgs(password=" + this.password + ", seed=" + this.seed + ", wallet=" + this.f1982wallet + ", screenType=" + this.screenType + ')';
    }

    public WalletPinScreenArgs(String password, String seed, Wallet wallet2, CreatePinCodeScreenType screenType) {
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        this.password = password;
        this.seed = seed;
        this.f1982wallet = wallet2;
        this.screenType = screenType;
    }

    public /* synthetic */ WalletPinScreenArgs(String str, String str2, Wallet wallet2, CreatePinCodeScreenType createPinCodeScreenType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? null : wallet2, createPinCodeScreenType);
    }

    public final String getPassword() {
        return this.password;
    }

    public final String getSeed() {
        return this.seed;
    }

    public final Wallet getWallet() {
        return this.f1982wallet;
    }

    public final CreatePinCodeScreenType getScreenType() {
        return this.screenType;
    }

    public WalletPinScreenArgs() {
        this("", "", null, new CreatePinCodeScreenType.Creation(WalletCreationType.Initial.Create.INSTANCE));
    }
}
