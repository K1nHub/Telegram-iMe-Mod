package com.smedialink.bots.data.model.response;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ClassifierResponse.kt */
/* loaded from: classes3.dex */
public final class ClassifierResponse {
    private final List<ClassifierItem> classes;
    private final List<String> words;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ClassifierResponse copy$default(ClassifierResponse classifierResponse, List list, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = classifierResponse.classes;
        }
        if ((i & 2) != 0) {
            list2 = classifierResponse.words;
        }
        return classifierResponse.copy(list, list2);
    }

    public final List<ClassifierItem> component1() {
        return this.classes;
    }

    public final List<String> component2() {
        return this.words;
    }

    public final ClassifierResponse copy(List<ClassifierItem> classes, List<String> words) {
        Intrinsics.checkNotNullParameter(classes, "classes");
        Intrinsics.checkNotNullParameter(words, "words");
        return new ClassifierResponse(classes, words);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ClassifierResponse) {
            ClassifierResponse classifierResponse = (ClassifierResponse) obj;
            return Intrinsics.areEqual(this.classes, classifierResponse.classes) && Intrinsics.areEqual(this.words, classifierResponse.words);
        }
        return false;
    }

    public int hashCode() {
        return (this.classes.hashCode() * 31) + this.words.hashCode();
    }

    public String toString() {
        return "ClassifierResponse(classes=" + this.classes + ", words=" + this.words + ')';
    }

    public ClassifierResponse(List<ClassifierItem> classes, List<String> words) {
        Intrinsics.checkNotNullParameter(classes, "classes");
        Intrinsics.checkNotNullParameter(words, "words");
        this.classes = classes;
        this.words = words;
    }

    public final List<ClassifierItem> getClasses() {
        return this.classes;
    }

    public final List<String> getWords() {
        return this.words;
    }

    /* compiled from: ClassifierResponse.kt */
    /* loaded from: classes3.dex */
    public static final class ClassifierItem {
        private final String gif;
        private final List<String> response;
        private final String tag;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ ClassifierItem copy$default(ClassifierItem classifierItem, String str, String str2, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                str = classifierItem.tag;
            }
            if ((i & 2) != 0) {
                str2 = classifierItem.gif;
            }
            if ((i & 4) != 0) {
                list = classifierItem.response;
            }
            return classifierItem.copy(str, str2, list);
        }

        public final String component1() {
            return this.tag;
        }

        public final String component2() {
            return this.gif;
        }

        public final List<String> component3() {
            return this.response;
        }

        public final ClassifierItem copy(String tag, String str, List<String> response) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(response, "response");
            return new ClassifierItem(tag, str, response);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof ClassifierItem) {
                ClassifierItem classifierItem = (ClassifierItem) obj;
                return Intrinsics.areEqual(this.tag, classifierItem.tag) && Intrinsics.areEqual(this.gif, classifierItem.gif) && Intrinsics.areEqual(this.response, classifierItem.response);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = this.tag.hashCode() * 31;
            String str = this.gif;
            return ((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.response.hashCode();
        }

        public String toString() {
            return "ClassifierItem(tag=" + this.tag + ", gif=" + ((Object) this.gif) + ", response=" + this.response + ')';
        }

        public ClassifierItem(String tag, String str, List<String> response) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(response, "response");
            this.tag = tag;
            this.gif = str;
            this.response = response;
        }

        public final String getGif() {
            return this.gif;
        }

        public final List<String> getResponse() {
            return this.response;
        }

        public final String getTag() {
            return this.tag;
        }
    }
}
