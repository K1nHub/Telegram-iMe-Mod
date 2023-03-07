package com.smedialink.utils.formatter;

import com.smedialink.model.wallet.BalanceFormatterInfo;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.StringExtKt;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
/* compiled from: BalanceFormatter.kt */
/* loaded from: classes3.dex */
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
        return formatBalance(percentage, i);
    }

    public static /* synthetic */ String formatFiatBalance$default(BalanceFormatter balanceFormatter, Number number, ResourceManager resourceManager, Integer num, int i, Object obj) {
        if ((i & 4) != 0) {
            num = null;
        }
        return balanceFormatter.formatFiatBalance(number, resourceManager, num);
    }

    public final String formatFiatBalance(Number balance, ResourceManager resourceManager, Integer num) {
        Intrinsics.checkNotNullParameter(balance, "balance");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        StringBuilder sb = new StringBuilder();
        sb.append(formatBalance(balance, num == null ? TokenInfo.Fiat.USD.INSTANCE.getDecimals() : num.intValue()));
        sb.append(' ');
        sb.append(resourceManager.getString(TokenInfo.Fiat.USD.INSTANCE.getShortName()));
        return sb.toString();
    }

    public final String formatShortFiatBalance(Number balance, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(balance, "balance");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return ((Object) AndroidUtilities.formatWholeNumber(balance.intValue(), 0)) + ' ' + resourceManager.getString(TokenInfo.Fiat.USD.INSTANCE.getShortName());
    }

    public final String formatTokenBalance(Number balance, String tokenTicker, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(balance, "balance");
        Intrinsics.checkNotNullParameter(tokenTicker, "tokenTicker");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return formatTokenBalance(balance, TokenInfo.Companion.map(tokenTicker), resourceManager);
    }

    public final String formatTokenBalance(Number balance, TokenInfo tokenInfo, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(balance, "balance");
        Intrinsics.checkNotNullParameter(tokenInfo, "tokenInfo");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return formatBalance(balance, tokenInfo.getDecimals()) + ' ' + resourceManager.getString(tokenInfo.getShortName());
    }

    public static final String formatBalance(Number balance, int i) {
        Intrinsics.checkNotNullParameter(balance, "balance");
        BalanceFormatterInfo currentLocaleFormatter = INSTANCE.getCurrentLocaleFormatter();
        NumberFormat numberFormat = currentLocaleFormatter.getNumberFormat();
        numberFormat.setMinimumFractionDigits(i);
        numberFormat.setMaximumFractionDigits(i);
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
