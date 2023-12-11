package com.iMe.model.wallet.crypto.tutorial;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.BaseFragment;
/* compiled from: TutorialType.kt */
/* loaded from: classes3.dex */
public abstract class TutorialType {
    private final int lastPageButtonTextResId;

    public /* synthetic */ TutorialType(int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(i);
    }

    private TutorialType(int i) {
        this.lastPageButtonTextResId = i;
    }

    public final int getLastPageButtonTextResId() {
        return this.lastPageButtonTextResId;
    }

    /* compiled from: TutorialType.kt */
    /* loaded from: classes3.dex */
    public static final class WalletCreated extends TutorialType {
        public static final WalletCreated INSTANCE = new WalletCreated();

        private WalletCreated() {
            super(C3632R.string.common_done, null);
        }
    }

    /* compiled from: TutorialType.kt */
    /* loaded from: classes3.dex */
    public static final class WalletIntro extends TutorialType {
        private final Function0<BaseFragment> onTutorialPassedFragmentCreator;

        public final Function0<BaseFragment> getOnTutorialPassedFragmentCreator() {
            return this.onTutorialPassedFragmentCreator;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public WalletIntro(Function0<? extends BaseFragment> onTutorialPassedFragmentCreator) {
            super(C3632R.string.wallet_creation_backup, null);
            Intrinsics.checkNotNullParameter(onTutorialPassedFragmentCreator, "onTutorialPassedFragmentCreator");
            this.onTutorialPassedFragmentCreator = onTutorialPassedFragmentCreator;
        }
    }
}
