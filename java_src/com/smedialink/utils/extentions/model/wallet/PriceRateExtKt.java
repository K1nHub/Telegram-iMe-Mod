package com.smedialink.utils.extentions.model.wallet;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.model.wallet.home.PriceRateDirection;
import com.smedialink.storage.domain.model.wallet.PriceRate;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PriceRateExt.kt */
/* loaded from: classes3.dex */
public final class PriceRateExtKt {
    public static final PriceRateDirection getPriceDirection(PriceRate priceRate) {
        Intrinsics.checkNotNullParameter(priceRate, "<this>");
        return priceRate.getRatePercentageChange24h() > BitmapDescriptorFactory.HUE_RED ? PriceRateDirection.UP : priceRate.getRatePercentageChange24h() < BitmapDescriptorFactory.HUE_RED ? PriceRateDirection.DOWN : PriceRateDirection.NOT_CHANGED;
    }
}
