package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.PrettyPrinter;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.p015io.SerializedString;
import java.io.Serializable;
/* loaded from: classes.dex */
public class DefaultPrettyPrinter implements PrettyPrinter, Serializable {
    public static final SerializedString DEFAULT_ROOT_VALUE_SEPARATOR = new SerializedString(" ");

    /* loaded from: classes.dex */
    public static class FixedSpaceIndenter extends NopIndenter {
        public static final FixedSpaceIndenter instance = new FixedSpaceIndenter();
    }

    public DefaultPrettyPrinter() {
        this(DEFAULT_ROOT_VALUE_SEPARATOR);
    }

    public DefaultPrettyPrinter(SerializableString serializableString) {
        FixedSpaceIndenter fixedSpaceIndenter = FixedSpaceIndenter.instance;
        DefaultIndenter defaultIndenter = DefaultIndenter.SYSTEM_LINEFEED_INSTANCE;
    }

    /* loaded from: classes.dex */
    public static class NopIndenter implements Serializable {
        static {
            new NopIndenter();
        }
    }
}
