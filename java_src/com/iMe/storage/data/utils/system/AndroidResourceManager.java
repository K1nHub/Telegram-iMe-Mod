package com.iMe.storage.data.utils.system;

import android.content.Context;
import android.content.res.Configuration;
import androidx.core.content.ContextCompat;
import androidx.core.p010os.ConfigurationCompat;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsKt;
/* compiled from: AndroidResourceManager.kt */
/* loaded from: classes3.dex */
public final class AndroidResourceManager implements ResourceManager {
    private Configuration config;
    private Context context;
    private final TelegramGateway telegramGateway;

    public AndroidResourceManager(Context context, TelegramGateway telegramGateway) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        this.context = context;
        this.telegramGateway = telegramGateway;
        Configuration configuration = context.getResources().getConfiguration();
        Intrinsics.checkNotNullExpressionValue(configuration, "context.resources.configuration");
        this.config = configuration;
    }

    @Override // com.iMe.storage.domain.utils.system.ResourceManager
    public String getString(int i) {
        if (isLanguageConfigurationChanged()) {
            Configuration configuration = new Configuration(this.context.getResources().getConfiguration());
            configuration.setLocale(resolveCorrectLocale());
            this.config = configuration;
            Context createConfigurationContext = this.context.createConfigurationContext(configuration);
            Intrinsics.checkNotNullExpressionValue(createConfigurationContext, "context.createConfigurationContext(config)");
            this.context = createConfigurationContext;
        }
        String string = this.context.getString(i);
        Intrinsics.checkNotNullExpressionValue(string, "context.getString(resourceId)");
        return string;
    }

    @Override // com.iMe.storage.domain.utils.system.ResourceManager
    public String getString(int i, Object... formatArgs) {
        Intrinsics.checkNotNullParameter(formatArgs, "formatArgs");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String string = getString(i);
        Object[] copyOf = Arrays.copyOf(formatArgs, formatArgs.length);
        String format = String.format(string, Arrays.copyOf(copyOf, copyOf.length));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return format;
    }

    @Override // com.iMe.storage.domain.utils.system.ResourceManager
    public int getColor(int i) {
        return ContextCompat.getColor(this.context, i);
    }

    @Override // com.iMe.storage.domain.utils.system.ResourceManager
    public float getDimens(int i) {
        return this.context.getResources().getDimension(i);
    }

    private final Locale resolveCorrectLocale() {
        boolean contains$default;
        Locale locale;
        List split$default;
        String currentLanguage = this.telegramGateway.getCurrentLanguage();
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) currentLanguage, (CharSequence) "-", false, 2, (Object) null);
        if (contains$default) {
            split$default = StringsKt__StringsKt.split$default((CharSequence) currentLanguage, new String[]{"-"}, false, 0, 6, (Object) null);
            if (split$default.size() > 1) {
                return new Locale((String) split$default.get(0), (String) split$default.get(1));
            }
            locale = new Locale(currentLanguage);
        } else {
            locale = new Locale(currentLanguage);
        }
        return locale;
    }

    private final boolean isLanguageConfigurationChanged() {
        String currentLanguage = this.telegramGateway.getCurrentLanguage();
        Locale locale = ConfigurationCompat.getLocales(this.config).get(0);
        if (Intrinsics.areEqual(currentLanguage, locale != null ? locale.getLanguage() : null)) {
            Locale locale2 = ConfigurationCompat.getLocales(this.context.getResources().getConfiguration()).get(0);
            if (Intrinsics.areEqual(currentLanguage, locale2 != null ? locale2.getLanguage() : null)) {
                return false;
            }
        }
        return true;
    }
}
