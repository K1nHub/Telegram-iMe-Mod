package org.fork.enums;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3301R;
/* compiled from: TemplatesMode.kt */
/* loaded from: classes4.dex */
public enum TemplatesMode {
    OVAL(C3301R.string.chat_templates_mode_oval),
    ATTACH(C3301R.string.chat_templates_mode_attach),
    OFF(C3301R.string.common_off);
    
    public static final Companion Companion = new Companion(null);
    private final int textResId;

    public static final TemplatesMode mapNameToEnum(String str) {
        return Companion.mapNameToEnum(str);
    }

    TemplatesMode(int i) {
        this.textResId = i;
    }

    public final int getTextResId() {
        return this.textResId;
    }

    /* compiled from: TemplatesMode.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TemplatesMode mapNameToEnum(String str) {
            TemplatesMode templatesMode;
            TemplatesMode[] values = TemplatesMode.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    templatesMode = null;
                    break;
                }
                templatesMode = values[i];
                if (Intrinsics.areEqual(templatesMode.name(), str)) {
                    break;
                }
                i++;
            }
            return templatesMode == null ? TemplatesMode.OVAL : templatesMode;
        }
    }
}
