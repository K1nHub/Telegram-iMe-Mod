package com.iMe.p031ui.adapter.provider;

import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3417R;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingCalculatorProgrammeProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.StakingCalculatorProgrammeProvider$networkIconCornerSize$2 */
/* loaded from: classes.dex */
public final class StakingCalculatorProgrammeProvider$networkIconCornerSize$2 extends Lambda implements Function0<Float> {
    final /* synthetic */ StakingCalculatorProgrammeProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingCalculatorProgrammeProvider$networkIconCornerSize$2(StakingCalculatorProgrammeProvider stakingCalculatorProgrammeProvider) {
        super(0);
        this.this$0 = stakingCalculatorProgrammeProvider;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Float invoke() {
        ResourceManager resourceManager;
        resourceManager = this.this$0.resourceManager;
        return Float.valueOf(resourceManager.getDimens(C3417R.dimen.icon_size_default) / 2);
    }
}
