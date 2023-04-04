package com.iMe.p032ui.adapter.provider;

import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3316R;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingOperationProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.StakingOperationProvider$networkIconCornerSize$2 */
/* loaded from: classes.dex */
public final class StakingOperationProvider$networkIconCornerSize$2 extends Lambda implements Function0<Float> {
    final /* synthetic */ StakingOperationProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingOperationProvider$networkIconCornerSize$2(StakingOperationProvider stakingOperationProvider) {
        super(0);
        this.this$0 = stakingOperationProvider;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Float invoke() {
        ResourceManager resourceManager;
        resourceManager = this.this$0.resourceManager;
        return Float.valueOf(resourceManager.getDimens(C3316R.dimen.icon_size_default) / 2);
    }
}
