package com.smedialink.p031ui.adapter.provider;

import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3158R;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingProgrammeProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.StakingProgrammeProvider$networkIconCornerSize$2 */
/* loaded from: classes3.dex */
public final class StakingProgrammeProvider$networkIconCornerSize$2 extends Lambda implements Function0<Float> {
    final /* synthetic */ StakingProgrammeProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingProgrammeProvider$networkIconCornerSize$2(StakingProgrammeProvider stakingProgrammeProvider) {
        super(0);
        this.this$0 = stakingProgrammeProvider;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Float invoke() {
        ResourceManager resourceManager;
        resourceManager = this.this$0.resourceManager;
        return Float.valueOf(resourceManager.getDimens(C3158R.dimen.icon_size_default) / 2);
    }
}
