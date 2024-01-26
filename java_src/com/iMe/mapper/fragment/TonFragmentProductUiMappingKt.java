package com.iMe.mapper.fragment;

import com.iMe.model.wallet.fragment.TonFragmentItem;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.model.crypto.ton.PremiumPlan;
import com.iMe.storage.domain.model.crypto.ton.TonFragmentProduct;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.formatter.BalanceFormatter;
import com.iMe.utils.formatter.DateFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import p033j$.util.DesugarTimeZone;
import timber.log.Timber;
/* compiled from: TonFragmentProductUiMapping.kt */
/* loaded from: classes3.dex */
public final class TonFragmentProductUiMappingKt {
    private static final String formatTimeLeft(String str) {
        long j;
        String sb;
        try {
            j = DateFormatter.parse$default(DateFormatter.DateType.ISO_EXTENDED, str, null, DesugarTimeZone.getTimeZone("UTC"), 4, null).getTime() - DateExtKt.now();
        } catch (Exception e) {
            Timber.m6e(e);
            j = 0;
        }
        if (j <= 0) {
            String string = LocaleController.getString("Expired", C3632R.string.Expired);
            Intrinsics.checkNotNullExpressionValue(string, "getString(\"Expired\", R.string.Expired)");
            return string;
        }
        long minutes = TimeUnit.MILLISECONDS.toMinutes(j);
        if (NumberExtKt.isZero(Long.valueOf(minutes))) {
            sb = LocaleController.getInternalString(C3632R.string.fragment_username_details_time_left_less_than_minute);
        } else {
            StringBuilder sb2 = new StringBuilder();
            TimeUnit timeUnit = TimeUnit.MINUTES;
            long days = timeUnit.toDays(minutes);
            if (days > 0) {
                sb2.append(LocaleController.formatPluralString("Days", (int) days, new Object[0]));
                minutes -= TimeUnit.DAYS.toMinutes(days);
            }
            long hours = timeUnit.toHours(minutes);
            if (hours > 0) {
                if (sb2.length() > 0) {
                    sb2.append(" ");
                }
                sb2.append(LocaleController.formatPluralString("Hours", (int) hours, new Object[0]));
                minutes -= TimeUnit.HOURS.toMinutes(hours);
            }
            if (minutes > 0) {
                if (sb2.length() > 0) {
                    sb2.append(" ");
                }
                sb2.append(LocaleController.formatPluralString("Minutes", (int) minutes, new Object[0]));
            }
            sb = sb2.toString();
        }
        String formatStringInternal = LocaleController.formatStringInternal(C3632R.string.fragment_username_details_time_left, sb);
        Intrinsics.checkNotNullExpressionValue(formatStringInternal, "formatStringInternal(\n  …       timeLeftText\n    )");
        return formatStringInternal;
    }

    public static final List<TonFragmentItem.Product> mapTonFragmentProductToUi(List<TonFragmentProduct> list, ResourceManager resourceManager) {
        int collectionSizeOrDefault;
        String removePrefix;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TonFragmentProduct tonFragmentProduct : list) {
            removePrefix = StringsKt__StringsKt.removePrefix(tonFragmentProduct.getUsername(), "@");
            String price = tonFragmentProduct.getPrice();
            String string = resourceManager.getString(C3632R.string.fragment_premium_product_price, tonFragmentProduct.getPrice());
            arrayList.add(new TonFragmentItem.Product(removePrefix, price, string, '~' + tonFragmentProduct.getFiatPrice() + TokenDetailed.Companion.getUSD().getTicker(), formatTimeLeft(tonFragmentProduct.getTimestamp()), tonFragmentProduct.getTimestamp()));
        }
        return arrayList;
    }

    public static final List<TonFragmentItem.C1533Premium> mapPremiumPlanToUi(List<PremiumPlan> list, ResourceManager resourceManager) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            PremiumPlan premiumPlan = (PremiumPlan) obj;
            arrayList.add(new TonFragmentItem.C1533Premium(premiumPlan.getPrice(), resourceManager.getString(C3632R.string.fragment_premium_product_price, BalanceFormatter.format$default(Double.valueOf(premiumPlan.getPrice()), null, 2, null)), '~' + premiumPlan.getFiatPrice() + TokenDetailed.Companion.getUSD().getTicker(), premiumPlan.getMonths(), premiumPlan.getDiscount(), NumberExtKt.isZero(Integer.valueOf(i))));
            i = i2;
        }
        return arrayList;
    }
}
