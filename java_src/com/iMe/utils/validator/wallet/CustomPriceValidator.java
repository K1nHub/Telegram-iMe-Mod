package com.iMe.utils.validator.wallet;

import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CustomPriceValidator.kt */
/* loaded from: classes4.dex */
public final class CustomPriceValidator {
    private final ResourceManager resourceManager;

    public CustomPriceValidator(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
    }
}
