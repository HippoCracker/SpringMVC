package com.smartengine.pojo;

/**
 * Created by zongzesheng on 11/21/15.
 */
public class Word {
  private String word;
  private String tag;

  public String getWord() {
    return word;
  }

  public void setWord(String word) {
    this.word = word;
  }

  public String getTag() {
    return tag;
  }

  public void setTag(String tag) {
    this.tag = tag;
  }

  @Override
  public String toString() {
    return word;
  }
}
