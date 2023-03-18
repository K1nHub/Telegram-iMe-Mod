package org.fork.p046ui.fragment;

import com.smedialink.p031ui.reaction.ReactionPresenter;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p047mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateReactionButtonsActivity.kt */
/* renamed from: org.fork.ui.fragment.CreateReactionButtonsActivity$presenter$2 */
/* loaded from: classes4.dex */
public final class CreateReactionButtonsActivity$presenter$2 extends Lambda implements Function0<ReactionPresenter> {
    final /* synthetic */ CreateReactionButtonsActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateReactionButtonsActivity$presenter$2(CreateReactionButtonsActivity createReactionButtonsActivity) {
        super(0);
        this.this$0 = createReactionButtonsActivity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CreateReactionButtonsActivity.kt */
    /* renamed from: org.fork.ui.fragment.CreateReactionButtonsActivity$presenter$2$1 */
    /* loaded from: classes4.dex */
    public static final class C31491 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ CreateReactionButtonsActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C31491(CreateReactionButtonsActivity createReactionButtonsActivity) {
            super(0);
            this.this$0 = createReactionButtonsActivity;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            long j;
            j = this.this$0.dialogId;
            return ParametersHolderKt.parametersOf(Long.valueOf(j));
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ReactionPresenter invoke() {
        Lazy lazy;
        CreateReactionButtonsActivity createReactionButtonsActivity = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C3148x788df6f3(createReactionButtonsActivity, null, new C31491(createReactionButtonsActivity)));
        return (ReactionPresenter) lazy.getValue();
    }
}
