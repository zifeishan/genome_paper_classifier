#! /usr/bin/env python

import sys
import ddlib  # Load the ddlib Python library for NLP functions

# For each input row
for line in sys.stdin:
  # Load the JSON object
  doc_id, words_raw = line.rstrip().split('\t')

  word_count = {}
  # sentences[i]: [word1, word2, word3]
  sentences = [s.split('~^~') for s in words_raw.split('~~^^~~')]

  # Counter
  for sent in sentences:
    for word in sent:
      if word not in word_count:
        word_count[word] = 1
      else:
        word_count[word] += 1

  # TODO filter stopwords

  # TODO more features

  for word in word_count:
    print '\t'.join([doc_id, word, str(word_count[word])])
  
