package com.smedialink.bots.domain.model;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BotLanguage.kt */
/* loaded from: classes3.dex */
public enum BotLanguage {
    RU("ru"),
    EN("eng");
    
    public static final Companion Companion = new Companion(null);
    private final String langCode;

    BotLanguage(String str) {
        this.langCode = str;
    }

    public final String getLangCode() {
        return this.langCode;
    }

    /* compiled from: BotLanguage.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BotLanguage fromValue(String langCode) {
            BotLanguage botLanguage;
            Intrinsics.checkNotNullParameter(langCode, "langCode");
            BotLanguage[] values = BotLanguage.values();
            int length = values.length - 1;
            if (length >= 0) {
                while (true) {
                    int i = length - 1;
                    botLanguage = values[length];
                    if (Intrinsics.areEqual(botLanguage.getLangCode(), langCode)) {
                        break;
                    } else if (i < 0) {
                        break;
                    } else {
                        length = i;
                    }
                }
            }
            botLanguage = null;
            return botLanguage == null ? BotLanguage.RU : botLanguage;
        }
    }
}
