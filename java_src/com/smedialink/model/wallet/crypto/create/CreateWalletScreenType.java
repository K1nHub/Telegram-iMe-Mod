package com.smedialink.model.wallet.crypto.create;

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
        private final String address;
        private final String password;
        private final String pin;
        private final List<String> secretWords;

        public /* synthetic */ SecretWords(List list, String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? "" : str3);
        }

        public final List<String> getSecretWords() {
            return this.secretWords;
        }

        public final String getAddress() {
            return this.address;
        }

        public final String getPassword() {
            return this.password;
        }

        public final String getPin() {
            return this.pin;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SecretWords(List<String> secretWords, String address, String password, String pin) {
            super(null);
            Intrinsics.checkNotNullParameter(secretWords, "secretWords");
            Intrinsics.checkNotNullParameter(address, "address");
            Intrinsics.checkNotNullParameter(password, "password");
            Intrinsics.checkNotNullParameter(pin, "pin");
            this.secretWords = secretWords;
            this.address = address;
            this.password = password;
            this.pin = pin;
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
