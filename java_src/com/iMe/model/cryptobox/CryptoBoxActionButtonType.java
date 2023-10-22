package com.iMe.model.cryptobox;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3630R;
/* compiled from: CryptoBoxActionButtonType.kt */
/* loaded from: classes3.dex */
public abstract class CryptoBoxActionButtonType {
    private final int textResId;

    public /* synthetic */ CryptoBoxActionButtonType(int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(i);
    }

    private CryptoBoxActionButtonType(int i) {
        this.textResId = i;
    }

    public int getTextResId() {
        return this.textResId;
    }

    /* compiled from: CryptoBoxActionButtonType.kt */
    /* renamed from: com.iMe.model.cryptobox.CryptoBoxActionButtonType$Ok */
    /* loaded from: classes3.dex */
    public static final class C1528Ok extends CryptoBoxActionButtonType {
        public static final C1528Ok INSTANCE = new C1528Ok();

        private C1528Ok() {
            super(C3630R.string.common_ok, null);
        }
    }

    /* compiled from: CryptoBoxActionButtonType.kt */
    /* loaded from: classes3.dex */
    public static final class Loading extends CryptoBoxActionButtonType {
        public static final Loading INSTANCE = new Loading();

        private Loading() {
            super(C3630R.string.common_progress_state_title, null);
        }
    }

    /* compiled from: CryptoBoxActionButtonType.kt */
    /* loaded from: classes3.dex */
    public static final class InProgress extends CryptoBoxActionButtonType {
        public static final InProgress INSTANCE = new InProgress();

        private InProgress() {
            super(C3630R.string.cryptobox_in_progress, null);
        }
    }

    /* compiled from: CryptoBoxActionButtonType.kt */
    /* loaded from: classes3.dex */
    public static final class Taken extends CryptoBoxActionButtonType {
        public static final Taken INSTANCE = new Taken();

        private Taken() {
            super(C3630R.string.cryptobox_taken, null);
        }
    }

    /* compiled from: CryptoBoxActionButtonType.kt */
    /* loaded from: classes3.dex */
    public static final class Get extends CryptoBoxActionButtonType {
        public static final Get INSTANCE = new Get();

        private Get() {
            super(C3630R.string.cryptobox_get, null);
        }
    }

    /* compiled from: CryptoBoxActionButtonType.kt */
    /* loaded from: classes3.dex */
    public static final class Finished extends CryptoBoxActionButtonType {
        public static final Finished INSTANCE = new Finished();

        private Finished() {
            super(C3630R.string.cryptobox_finished, null);
        }
    }

    /* compiled from: CryptoBoxActionButtonType.kt */
    /* loaded from: classes3.dex */
    public static final class Stopped extends CryptoBoxActionButtonType {
        public static final Stopped INSTANCE = new Stopped();

        private Stopped() {
            super(C3630R.string.cryptobox_stopped, null);
        }
    }

    /* compiled from: CryptoBoxActionButtonType.kt */
    /* loaded from: classes3.dex */
    public static abstract class WithDescription extends CryptoBoxActionButtonType {
        private final int descriptionTextResId;
        private final int textResId;

        public /* synthetic */ WithDescription(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, i2);
        }

        @Override // com.iMe.model.cryptobox.CryptoBoxActionButtonType
        public int getTextResId() {
            return this.textResId;
        }

        public final int getDescriptionTextResId() {
            return this.descriptionTextResId;
        }

        private WithDescription(int i, int i2) {
            super(i, null);
            this.textResId = i;
            this.descriptionTextResId = i2;
        }

        /* compiled from: CryptoBoxActionButtonType.kt */
        /* loaded from: classes3.dex */
        public static final class Subscribe extends WithDescription {
            private final long chatId;
            private final String chatName;

            public final String getChatName() {
                return this.chatName;
            }

            public final long getChatId() {
                return this.chatId;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Subscribe(String chatName, long j) {
                super(C3630R.string.cryptobox_subscribe, C3630R.string.cryptobox_participation_info_subscribe, null);
                Intrinsics.checkNotNullParameter(chatName, "chatName");
                this.chatName = chatName;
                this.chatId = j;
            }
        }

        /* compiled from: CryptoBoxActionButtonType.kt */
        /* loaded from: classes3.dex */
        public static final class CreateWallet extends WithDescription {
            public static final CreateWallet INSTANCE = new CreateWallet();

            private CreateWallet() {
                super(C3630R.string.cryptobox_create, C3630R.string.cryptobox_participation_info_create, null);
            }
        }

        /* compiled from: CryptoBoxActionButtonType.kt */
        /* loaded from: classes3.dex */
        public static final class ActivateWallet extends WithDescription {
            public static final ActivateWallet INSTANCE = new ActivateWallet();

            private ActivateWallet() {
                super(C3630R.string.cryptobox_activate, C3630R.string.cryptobox_participation_info_activate, null);
            }
        }

        /* compiled from: CryptoBoxActionButtonType.kt */
        /* loaded from: classes3.dex */
        public static final class Forwarded extends WithDescription {
            public static final Forwarded INSTANCE = new Forwarded();

            private Forwarded() {
                super(C3630R.string.common_ok, C3630R.string.cryptobox_participation_info_forwarded, null);
            }
        }
    }
}
