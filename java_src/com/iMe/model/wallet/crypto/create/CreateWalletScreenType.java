package com.iMe.model.wallet.crypto.create;

import com.iMe.storage.data.utils.extentions.StringExtKt;
import com.iMe.storage.domain.model.crypto.Wallet;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CreateWalletScreenType.kt */
/* loaded from: classes3.dex */
public abstract class CreateWalletScreenType {
    public /* synthetic */ CreateWalletScreenType(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private CreateWalletScreenType() {
    }

    /* compiled from: CreateWalletScreenType.kt */
    /* loaded from: classes3.dex */
    public static final class Ready extends CreateWalletScreenType {
        public static final Ready INSTANCE = new Ready();

        private Ready() {
            super(null);
        }
    }

    /* compiled from: CreateWalletScreenType.kt */
    /* loaded from: classes3.dex */
    public static final class TooBad extends CreateWalletScreenType {
        public static final TooBad INSTANCE = new TooBad();

        private TooBad() {
            super(null);
        }
    }

    /* compiled from: CreateWalletScreenType.kt */
    /* loaded from: classes3.dex */
    public static final class SecretWords extends CreateWalletScreenType {
        private final String password;
        private final String pin;

        /* renamed from: wallet  reason: collision with root package name */
        private final Wallet f1981wallet;

        public /* synthetic */ SecretWords(String str, String str2, Wallet wallet2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, wallet2);
        }

        public final String getPassword() {
            return this.password;
        }

        public final String getPin() {
            return this.pin;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SecretWords(String password, String pin, Wallet wallet2) {
            super(null);
            Intrinsics.checkNotNullParameter(password, "password");
            Intrinsics.checkNotNullParameter(pin, "pin");
            Intrinsics.checkNotNullParameter(wallet2, "wallet");
            this.password = password;
            this.pin = pin;
            this.f1981wallet = wallet2;
        }

        public final List<String> getSecretWords() {
            return StringExtKt.splitBySpace(this.f1981wallet.getMnemonic());
        }

        public final String getAddress() {
            return this.f1981wallet.getAddress();
        }

        public final int getWordsCount() {
            return getSecretWords().size();
        }
    }

    /* compiled from: CreateWalletScreenType.kt */
    /* loaded from: classes3.dex */
    public static final class WordsCheck extends CreateWalletScreenType {
        private final String password;
        private final String pin;
        private final List<String> secretWords;

        public final List<String> getSecretWords() {
            return this.secretWords;
        }

        public final String getPassword() {
            return this.password;
        }

        public final String getPin() {
            return this.pin;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WordsCheck(List<String> secretWords, String password, String pin) {
            super(null);
            Intrinsics.checkNotNullParameter(secretWords, "secretWords");
            Intrinsics.checkNotNullParameter(password, "password");
            Intrinsics.checkNotNullParameter(pin, "pin");
            this.secretWords = secretWords;
            this.password = password;
            this.pin = pin;
        }
    }

    /* compiled from: CreateWalletScreenType.kt */
    /* loaded from: classes3.dex */
    public static final class Import extends CreateWalletScreenType {
        private final String address;
        private final String password;

        public Import() {
            this(null, null, 3, null);
        }

        public /* synthetic */ Import(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2);
        }

        public final String getAddress() {
            return this.address;
        }

        public final String getPassword() {
            return this.password;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Import(String address, String password) {
            super(null);
            Intrinsics.checkNotNullParameter(address, "address");
            Intrinsics.checkNotNullParameter(password, "password");
            this.address = address;
            this.password = password;
        }
    }
}
