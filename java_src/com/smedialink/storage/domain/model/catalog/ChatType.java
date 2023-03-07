package com.smedialink.storage.domain.model.catalog;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ChatType.kt */
/* loaded from: classes3.dex */
public enum ChatType {
    CHANNEL,
    GROUP;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: ChatType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ChatType getByName(String name) {
            ChatType chatType;
            Intrinsics.checkNotNullParameter(name, "name");
            ChatType[] values = ChatType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    chatType = null;
                    break;
                }
                chatType = values[i];
                if (Intrinsics.areEqual(chatType.name(), name)) {
                    break;
                }
                i++;
            }
            return chatType == null ? ChatType.CHANNEL : chatType;
        }
    }
}
