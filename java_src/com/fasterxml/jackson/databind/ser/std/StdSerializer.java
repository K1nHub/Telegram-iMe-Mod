package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.databind.JsonSerializer;
import java.io.Serializable;
/* loaded from: classes.dex */
public abstract class StdSerializer<T> extends JsonSerializer<T> implements Serializable {
    /* JADX INFO: Access modifiers changed from: protected */
    public StdSerializer(Class<T> cls) {
    }
}
