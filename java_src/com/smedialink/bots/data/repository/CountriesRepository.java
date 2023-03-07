package com.smedialink.bots.data.repository;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt___StringsKt;
/* compiled from: CountriesRepository.kt */
/* loaded from: classes3.dex */
public final class CountriesRepository {
    public static final Companion Companion = new Companion(null);
    private static volatile CountriesRepository INSTANCE;
    private static final Set<String> RUSSIAN_PHONE_CODES;
    private static final Set<String> RUSSIAN_REGIONS;
    private final Context context;
    private final SharedPreferences sharedPreferences;

    public /* synthetic */ CountriesRepository(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    private CountriesRepository(Context context) {
        this.context = context;
        SharedPreferences sharedPreferences = context.getSharedPreferences("SHARED_PREFERENCES_COUNTRIES", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "context.getSharedPrefere…ES, Context.MODE_PRIVATE)");
        this.sharedPreferences = sharedPreferences;
    }

    /* compiled from: CountriesRepository.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CountriesRepository getInstance(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (CountriesRepository.INSTANCE == null) {
                synchronized (Reflection.getOrCreateKotlinClass(CountriesRepository.class)) {
                    Companion companion = CountriesRepository.Companion;
                    CountriesRepository.INSTANCE = new CountriesRepository(context, null);
                    Unit unit = Unit.INSTANCE;
                }
            }
            CountriesRepository countriesRepository = CountriesRepository.INSTANCE;
            Intrinsics.checkNotNull(countriesRepository);
            return countriesRepository;
        }

        public final Set<String> getRUSSIAN_REGIONS() {
            return CountriesRepository.RUSSIAN_REGIONS;
        }

        public final Set<String> getRUSSIAN_PHONE_CODES() {
            return CountriesRepository.RUSSIAN_PHONE_CODES;
        }

        public final boolean isRussia(String phone, String locale) {
            String str;
            char first;
            Intrinsics.checkNotNullParameter(phone, "phone");
            Intrinsics.checkNotNullParameter(locale, "locale");
            if (phone.length() == 11) {
                first = StringsKt___StringsKt.first(phone);
                str = String.valueOf(first);
            } else {
                str = "";
            }
            return getRUSSIAN_PHONE_CODES().contains(str) || getRUSSIAN_REGIONS().contains(locale);
        }
    }

    static {
        Set<String> of;
        Set<String> of2;
        of = SetsKt__SetsKt.setOf((Object[]) new String[]{"ru_MD", "ru_UA", "ru_RU", "ru_KZ", "ru_KG", "ru_BY", "ru", "hy_AM", "hy", "uz_Cyrl_UZ", "uz_Cyrl", "tg_Cyrl_TJ", "tg_Cyrl", "az_Cyrl_AZ", "az_Cyrl"});
        RUSSIAN_REGIONS = of;
        of2 = SetsKt__SetsKt.setOf((Object[]) new String[]{"7", "373", "374", "375", "380", "992", "994", "996", "998"});
        RUSSIAN_PHONE_CODES = of2;
    }

    private final String getDefaultLanguage(String str, String str2) {
        return Companion.isRussia(str, str2) ? "ru" : "eng";
    }

    public final String getCurrentBotLanguage(String phone, String locale) {
        Intrinsics.checkNotNullParameter(phone, "phone");
        Intrinsics.checkNotNullParameter(locale, "locale");
        String string = this.sharedPreferences.getString("SHARED_PREFERENCES_KEY_CURRENT_BOT_LANGUAGE", null);
        if (string == null) {
            String defaultLanguage = getDefaultLanguage(phone, locale);
            this.sharedPreferences.edit().putString("SHARED_PREFERENCES_KEY_CURRENT_BOT_LANGUAGE", defaultLanguage).apply();
            return defaultLanguage;
        }
        return string;
    }

    public final void setCurrentBotLanguage(String language) {
        Intrinsics.checkNotNullParameter(language, "language");
        this.sharedPreferences.edit().putString("SHARED_PREFERENCES_KEY_CURRENT_BOT_LANGUAGE", language).apply();
    }
}
