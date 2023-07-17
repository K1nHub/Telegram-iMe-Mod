package com.iMe.p031ui.adapter.provider;

import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3417R;
/* compiled from: CustomTokenProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CustomTokenProvider$networkIconCornerSize$2 */
/* loaded from: classes.dex */
final class CustomTokenProvider$networkIconCornerSize$2 extends Lambda implements Function0<Float> {
    final /* synthetic */ ResourceManager $resourceManager;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomTokenProvider$networkIconCornerSize$2(ResourceManager resourceManager) {
        super(0);
        this.$resourceManager = resourceManager;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Float invoke() {
        return Float.valueOf(this.$resourceManager.getDimens(C3417R.dimen.icon_size_small_upper) / 2);
    }
}
