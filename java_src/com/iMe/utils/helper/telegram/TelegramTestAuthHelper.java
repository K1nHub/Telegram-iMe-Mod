package com.iMe.utils.helper.telegram;

import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.LocaleController;
import org.telegram.p042ui.CountrySelectActivity;
/* compiled from: TelegramTestAuthHelper.kt */
/* loaded from: classes4.dex */
public final class TelegramTestAuthHelper {
    public static final TelegramTestAuthHelper INSTANCE = new TelegramTestAuthHelper();
    private static int currentIteration;
    private static final List<String> dataCenters;

    private TelegramTestAuthHelper() {
    }

    static {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"3", "2", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE});
        dataCenters = listOf;
    }

    public static final CountrySelectActivity.Country getCountry() {
        CountrySelectActivity.Country country = new CountrySelectActivity.Country();
        country.code = "999";
        country.name = LocaleController.getInternalString(C3630R.string.debug_test_backend);
        country.shortname = "TB";
        return country;
    }

    public static final TelegramTestPhoneNumber generatePhoneNumber() {
        int lastIndex;
        int random;
        String repeat;
        int i = currentIteration;
        List<String> list = dataCenters;
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(list);
        if (i > lastIndex) {
            currentIteration = 0;
        }
        String str = list.get(currentIteration);
        currentIteration++;
        StringBuilder sb = new StringBuilder("66");
        sb.append(str);
        random = RangesKt___RangesKt.random(new IntRange(1000, 9999), Random.Default);
        sb.append(random);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder(TELEGRAM_N…Y\n            .toString()");
        repeat = StringsKt__StringsJVMKt.repeat(str, 5);
        return new TelegramTestPhoneNumber(repeat, sb2);
    }
}
