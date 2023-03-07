package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.base.ParserMinimalBase;
import com.fasterxml.jackson.core.json.JsonReadContext;
import java.io.IOException;
/* loaded from: classes.dex */
public class TokenBuffer extends JsonGenerator {
    protected Segment _first;
    protected boolean _hasNativeObjectIds;
    protected boolean _hasNativeTypeIds;
    protected ObjectCodec _objectCodec;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static final class Segment {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
    }

    static {
        JsonGenerator.Feature.collectDefaults();
    }

    public JsonParser asParser() {
        return asParser(this._objectCodec);
    }

    public JsonParser asParser(ObjectCodec objectCodec) {
        return new Parser(this._first, objectCodec, this._hasNativeTypeIds, this._hasNativeObjectIds);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[TokenBuffer: ");
        JsonParser asParser = asParser();
        int i = 0;
        boolean z = this._hasNativeTypeIds || this._hasNativeObjectIds;
        while (true) {
            try {
                JsonToken nextToken = asParser.nextToken();
                if (nextToken == null) {
                    break;
                }
                if (z) {
                    _appendNativeIds(sb);
                }
                if (i < 100) {
                    if (i > 0) {
                        sb.append(", ");
                    }
                    sb.append(nextToken.toString());
                    if (nextToken == JsonToken.FIELD_NAME) {
                        sb.append('(');
                        sb.append(asParser.getCurrentName());
                        sb.append(')');
                    }
                }
                i++;
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }
        if (i >= 100) {
            sb.append(" ... (truncated ");
            sb.append(i - 100);
            sb.append(" entries)");
        }
        sb.append(']');
        return sb.toString();
    }

    private final void _appendNativeIds(StringBuilder sb) {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static final class Parser extends ParserMinimalBase {
        protected boolean _closed;
        protected JsonLocation _location;
        protected JsonReadContext _parsingContext;
        protected int _segmentPtr;

        @Override // com.fasterxml.jackson.core.JsonParser
        public JsonToken nextToken() throws IOException {
            return null;
        }

        public Parser(Segment segment, ObjectCodec objectCodec, boolean z, boolean z2) {
            super(0);
            this._location = null;
            this._segmentPtr = -1;
            this._parsingContext = JsonReadContext.createRootContext(null);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this._closed) {
                return;
            }
            this._closed = true;
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public String getCurrentName() {
            JsonToken jsonToken = this._currToken;
            if (jsonToken == JsonToken.START_OBJECT || jsonToken == JsonToken.START_ARRAY) {
                return this._parsingContext.getParent().getCurrentName();
            }
            return this._parsingContext.getCurrentName();
        }
    }
}
