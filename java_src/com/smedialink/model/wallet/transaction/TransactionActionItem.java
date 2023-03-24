package com.smedialink.model.wallet.transaction;

import com.smedialink.model.wallet.ActionItem;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3301R;
/* compiled from: TransactionActionItem.kt */
/* loaded from: classes3.dex */
public abstract class TransactionActionItem implements ActionItem {
    private final int icon;
    private final int title;
    private final String titleString;

    public /* synthetic */ TransactionActionItem(int i, int i2, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, str);
    }

    private TransactionActionItem(int i, int i2, String str) {
        this.title = i;
        this.icon = i2;
        this.titleString = str;
    }

    public /* synthetic */ TransactionActionItem(int i, int i2, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, (i3 & 4) != 0 ? null : str, null);
    }

    @Override // com.smedialink.model.wallet.ActionItem
    public String getTitle(ResourceManager resourceManager) {
        return ActionItem.DefaultImpls.getTitle(this, resourceManager);
    }

    @Override // com.smedialink.model.wallet.ActionItem
    public int getTitle() {
        return this.title;
    }

    @Override // com.smedialink.model.wallet.ActionItem
    public int getIcon() {
        return this.icon;
    }

    @Override // com.smedialink.model.wallet.ActionItem
    public String getTitleString() {
        return this.titleString;
    }

    /* compiled from: TransactionActionItem.kt */
    /* loaded from: classes3.dex */
    public static final class Send extends TransactionActionItem {
        public static final Send INSTANCE = new Send();

        private Send() {
            super(C3301R.string.wallet_token_details_details_action_send, C3301R.C3303drawable.msg_send, null, 4, null);
        }
    }

    /* compiled from: TransactionActionItem.kt */
    /* loaded from: classes3.dex */
    public static final class Support extends TransactionActionItem {
        public static final Support INSTANCE = new Support();

        private Support() {
            super(C3301R.string.wallet_token_details_action_simplex_support, C3301R.C3303drawable.msg_help, null, 4, null);
        }
    }

    /* compiled from: TransactionActionItem.kt */
    /* loaded from: classes3.dex */
    public static final class Profile extends TransactionActionItem {
        public static final Profile INSTANCE = new Profile();

        private Profile() {
            super(C3301R.string.wallet_transaction_details_action_open_profile, C3301R.C3303drawable.msg_openprofile, null, 4, null);
        }
    }

    /* compiled from: TransactionActionItem.kt */
    /* loaded from: classes3.dex */
    public static final class Copy extends TransactionActionItem {
        private final int title;

        public Copy(int i) {
            super(i, C3301R.C3303drawable.fork_ic_id_28, null, 4, null);
            this.title = i;
        }

        @Override // com.smedialink.model.wallet.transaction.TransactionActionItem, com.smedialink.model.wallet.ActionItem
        public int getTitle() {
            return this.title;
        }
    }

    /* compiled from: TransactionActionItem.kt */
    /* loaded from: classes3.dex */
    public static final class OpenScan extends TransactionActionItem {
        private final int icon;
        private final String titleString;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenScan(int i, String titleString) {
            super(0, i, titleString, null);
            Intrinsics.checkNotNullParameter(titleString, "titleString");
            this.icon = i;
            this.titleString = titleString;
        }

        @Override // com.smedialink.model.wallet.transaction.TransactionActionItem, com.smedialink.model.wallet.ActionItem
        public int getIcon() {
            return this.icon;
        }

        @Override // com.smedialink.model.wallet.transaction.TransactionActionItem, com.smedialink.model.wallet.ActionItem
        public String getTitleString() {
            return this.titleString;
        }
    }

    /* compiled from: TransactionActionItem.kt */
    /* loaded from: classes3.dex */
    public static final class Cancel extends TransactionActionItem {
        public static final Cancel INSTANCE = new Cancel();

        private Cancel() {
            super(C3301R.string.wallet_transaction_details_action_cancel, C3301R.C3303drawable.fork_cancel_transaction, null, 4, null);
        }
    }

    /* compiled from: TransactionActionItem.kt */
    /* loaded from: classes3.dex */
    public static final class Boost extends TransactionActionItem {
        public static final Boost INSTANCE = new Boost();

        private Boost() {
            super(C3301R.string.wallet_transaction_details_action_boost, C3301R.C3303drawable.fork_ic_speed_up_transaction, null, 4, null);
        }
    }
}
