package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer;
import com.fasterxml.jackson.core.sym.CharsToNameCanonicalizer;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import java.io.Serializable;
/* loaded from: classes.dex */
public class JsonFactory implements Serializable {
    protected ObjectCodec _objectCodec;
    protected int _parserFeatures;
    protected static final int DEFAULT_FACTORY_FEATURE_FLAGS = Feature.collectDefaults();
    protected static final int DEFAULT_PARSER_FEATURE_FLAGS = JsonParser.Feature.collectDefaults();
    protected static final int DEFAULT_GENERATOR_FEATURE_FLAGS = JsonGenerator.Feature.collectDefaults();
    private static final SerializableString DEFAULT_ROOT_VALUE_SEPARATOR = DefaultPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR;

    public boolean requiresPropertyOrdering() {
        return false;
    }

    /* loaded from: classes.dex */
    public enum Feature {
        INTERN_FIELD_NAMES(true),
        CANONICALIZE_FIELD_NAMES(true),
        FAIL_ON_SYMBOL_HASH_OVERFLOW(true),
        USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING(true);
        
        private final boolean _defaultState;

        public static int collectDefaults() {
            Feature[] values;
            int i = 0;
            for (Feature feature : values()) {
                if (feature.enabledByDefault()) {
                    i |= feature.getMask();
                }
            }
            return i;
        }

        Feature(boolean z) {
            this._defaultState = z;
        }

        public boolean enabledByDefault() {
            return this._defaultState;
        }

        public boolean enabledIn(int i) {
            return (i & getMask()) != 0;
        }

        public int getMask() {
            return 1 << ordinal();
        }
    }

    static {
        new ThreadLocal();
    }

    public JsonFactory() {
        this(null);
    }

    public JsonFactory(ObjectCodec objectCodec) {
        CharsToNameCanonicalizer.createRoot();
        ByteQuadsCanonicalizer.createRoot();
        this._parserFeatures = DEFAULT_PARSER_FEATURE_FLAGS;
        this._objectCodec = objectCodec;
    }

    public final JsonFactory configure(JsonParser.Feature feature, boolean z) {
        return z ? enable(feature) : disable(feature);
    }

    public JsonFactory enable(JsonParser.Feature feature) {
        this._parserFeatures = feature.getMask() | this._parserFeatures;
        return this;
    }

    public JsonFactory disable(JsonParser.Feature feature) {
        this._parserFeatures = (~feature.getMask()) & this._parserFeatures;
        return this;
    }

    public JsonFactory setCodec(ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
        return this;
    }

    public ObjectCodec getCodec() {
        return this._objectCodec;
    }
}
