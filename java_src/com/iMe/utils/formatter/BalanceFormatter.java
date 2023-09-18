package com.iMe.utils.formatter;

import com.iMe.model.wallet.BalanceFormatterInfo;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.utils.extentions.common.StringExtKt;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
/* compiled from: BalanceFormatter.kt */
/* loaded from: classes6.dex */
public final class BalanceFormatter {
    public static final BalanceFormatter INSTANCE = new BalanceFormatter();
    private static final HashMap<String, BalanceFormatterInfo> availableLocalesFormatter = new HashMap<>();

    private BalanceFormatter() {
    }

    public final Number parseFormattedString(String value) {
        Number number;
        Intrinsics.checkNotNullParameter(value, "value");
        try {
            number = getCurrentLocaleFormatter().getNumberFormat().parse(value);
        } catch (ParseException unused) {
            number = null;
        }
        if (number == null) {
            return 0;
        }
        return number;
    }

    public static /* synthetic */ String formatPercents$default(BalanceFormatter balanceFormatter, Number number, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 2;
        }
        return balanceFormatter.formatPercents(number, i);
    }

    public final String formatPercents(Number percentage, int i) {
        Intrinsics.checkNotNullParameter(percentage, "percentage");
        return format(percentage, Integer.valueOf(i));
    }

    public static /* synthetic */ String formatFiatBalance$default(BalanceFormatter balanceFormatter, Number number, Integer num, int i, Object obj) {
        if ((i & 2) != 0) {
            num = null;
        }
        return balanceFormatter.formatFiatBalance(number, num);
    }

    public final String formatFiatBalance(Number balance, Integer num) {
        Intrinsics.checkNotNullParameter(balance, "balance");
        return format(balance, num) + ' ' + TokenDetailed.Companion.getUSD().getTicker();
    }

    public final String formatShortFiatBalance(Number balance) {
        Intrinsics.checkNotNullParameter(balance, "balance");
        return AndroidUtilities.formatWholeNumber(balance.intValue()) + ' ' + TokenDetailed.Companion.getUSD().getTicker();
    }

    public final String formatTokenBalance(Number balance, TokenDetailed token) {
        Intrinsics.checkNotNullParameter(balance, "balance");
        Intrinsics.checkNotNullParameter(token, "token");
        return format(balance, Integer.valueOf(token.getDecimals())) + ' ' + token.getTicker();
    }

    public static /* synthetic */ String format$default(Number number, Integer num, int i, Object obj) {
        if ((i & 2) != 0) {
            num = null;
        }
        return format(number, num);
    }

    public static final String format(Number balance, Integer num) {
        Intrinsics.checkNotNullParameter(balance, "balance");
        BalanceFormatterInfo currentLocaleFormatter = INSTANCE.getCurrentLocaleFormatter();
        NumberFormat numberFormat = currentLocaleFormatter.getNumberFormat();
        if (num != null) {
            numberFormat.setMinimumFractionDigits(num.intValue());
            numberFormat.setMaximumFractionDigits(num.intValue());
        }
        String format = numberFormat.format(balance);
        Intrinsics.checkNotNullExpressionValue(format, "currentLocaleFormatter.n…         .format(balance)");
        return StringExtKt.stripZeros(format, currentLocaleFormatter.getDecimalSeparator());
    }

    private final BalanceFormatterInfo getCurrentLocaleFormatter() {
        String currentLocale = LocaleController.getInstance().defaultLangIfIsRtl();
        HashMap<String, BalanceFormatterInfo> hashMap = availableLocalesFormatter;
        Intrinsics.checkNotNullExpressionValue(currentLocale, "currentLocale");
        BalanceFormatterInfo balanceFormatterInfo = hashMap.get(currentLocale);
        if (balanceFormatterInfo == null) {
            NumberFormat numberInstance = NumberFormat.getNumberInstance(new Locale(currentLocale));
            Intrinsics.checkNotNullExpressionValue(numberInstance, "getNumberInstance(Locale(currentLocale))");
            balanceFormatterInfo = new BalanceFormatterInfo(numberInstance, new DecimalFormatSymbols(new Locale(currentLocale)).getDecimalSeparator());
            hashMap.put(currentLocale, balanceFormatterInfo);
        }
        return balanceFormatterInfo;
    }
}
