package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.databind.util.ClassUtil;
import java.util.Iterator;
/* loaded from: classes.dex */
public abstract class JsonNode extends JsonSerializable$Base implements Iterable<JsonNode> {
    protected JsonNode() {
    }

    @Override // java.lang.Iterable
    public final Iterator<JsonNode> iterator() {
        return elements();
    }

    public Iterator<JsonNode> elements() {
        return ClassUtil.emptyIterator();
    }
}
